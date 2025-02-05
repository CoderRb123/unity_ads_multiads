// The Swift Programming Language
// https://docs.swift.org/swift-book

import MultiAdsInterface
import SwiftUI
import UnityAds
@available(iOS 13.0, *)


public  class UnityAdsMultiAds  {
    public init(){
        
    }
    
    
    public let unityAds:UnityAdsMulti = UnityAdsMulti()
}
@available(iOS 13.0, *)
public class UnityAdsMulti : @preconcurrency NetworkInterface{
    public func initNetwork() -> Bool {
        let configID: String? = ServerConfig.sharedInstance.adNetworkIds?["unity"]?.configId
    
        if(configID != nil){
            UnityAds.initialize(configID!)
            return true
        }
        return false
       
    }
    
    public func getAdUnits() -> [Any] {
        
        return []
    }
    
    public func isNetworkInit() -> Bool {
        
        return true
    }
    
    public func loadInterAd(adModuleCallBacks: AdModuleWithCallBacks?) {
        
    }
    
    public func showInterAd(adModuleCallBacks: AdModuleWithCallBacks?) {
        
    }
    
    public func isInterAdLoaded() -> Bool {
        
        
        return false
    }
    
    @MainActor public func loadAndShowInterAd(adModuleCallBacks: AdModuleWithCallBacks?)  {
        
        UnityInter.shared.adModuleCallBacks = adModuleCallBacks
        UnityInter.shared.loadAndShowInter()
       
    }
    
    public func loadRewardAd(adModuleCallBacks: AdModuleWithCallBacks?) {
        
    }
    
    public func showRewardAd(adModuleCallBacks: AdModuleWithCallBacks?) {
        
    }
    
    public func isRewardAdLoaded() -> Bool {
        return false

    }
    
    @MainActor public func loadAndShowRewardAd(adModuleCallBacks: AdModuleWithCallBacks?) {
        UnityReward.shared.adModuleCallBacks = adModuleCallBacks
        UnityReward.shared.loadAndShowReward()
    }
    
    public func loadRewardInter(adModuleCallBacks: AdModuleWithCallBacks?) {
        
    }
    
    public func showRewardInter(adModuleCallBacks: AdModuleWithCallBacks?) {
        
    }
    
    public func isRewardInterAdLoaded() -> Bool {
        return false

    }
    
    public func loadAndShowRewardInter(adModuleCallBacks: AdModuleWithCallBacks?) {
        
    }
    
    public func getNativeAd(height: Double?, width: Double?, from: String?) -> ViewWrapper {
        return ViewWrapper(v: VStack{})
    }
    
    public func getBannerAd(from: String?) -> ViewWrapper {
        return ViewWrapper(v: VStack{})

    }
    
    
    
}




