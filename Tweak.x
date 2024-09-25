#import <UIKit/UIKit.h>

%hook AdPlayQueueManager
- (bool)isItemMonetizable:(id)arg1 {
	return NO;
}
%end

%hook PlayQueueTrack
- (bool)isMonetizable {
	return NO;
}

- (id)initWithUrn:(id)arg1 transcodings:(id)arg2 streamURL:(id)arg3 permalinkURL:(id)arg4 waveformURL:(id)arg5 artistUrn:(id)arg6 stationUrn:(id)arg7 artistName:(id)arg8 title:(id)arg9 playQueueTitle:(id)arg10 playableDuration:(double)arg11 fullDuration:(double)arg12 monetizable:(bool)arg13 shareable:(bool)arg14 blocked:(bool)arg15 snipped:(bool)arg16 syncable:(bool)arg17 subMidTier:(bool)arg18 subHighTier:(bool)arg19 policy:(id)arg20 monetizationModel:(id)arg21 analyticsBag:(id)arg22 imageUrlTemplate:(id)arg23 genre:(id)arg24 {
	arg13 = NO;
	return %orig;
}
%end

%hook SoundCloudPatchedSwiftClassNameAudioAdPlayerEventController
- (id)init {
	return NULL;
}
%end

%hook SoundCloudPatchedSwiftClassNamePlayQueueItemTrackEntity
- (bool)isMonetizable {
	return NO;
}

- (id)initWithUrn:(id)arg1 transcodings:(id)arg2 streamURL:(id)arg3 waveformURL:(id)arg4 artistUrn:(id)arg5 stationUrn:(id)arg6 artistName:(id)arg7 title:(id)arg8 playQueueTitle:(id)arg9 playableDurationInMs:(unsigned long long)arg10 fullDurationInMs:(unsigned long long)arg11 monetizable:(bool)arg12 shareable:(bool)arg13 blocked:(bool)arg14 snipped:(bool)arg15 syncable:(bool)arg16 subMidTier:(bool)arg17 subHighTier:(bool)arg18 monetizationModel:(id)arg19 policy:(id)arg20 analyticsBag:(id)arg21 artworkUrn:(id)arg22 itemType:(long long)arg23 imageUrlTemplate:(id)arg24 secretToken:(id)arg25 playlistStationUrn:(id)arg26 permalinkURL:(id)arg27 genre:(id)arg28 {
	arg12 = NO;
	return %orig;
}
%end

%hook SoundCloudPatchedSwiftClassNameUpsellManager
- (bool)shouldUpsell {
	return NO;
}

- (bool)shouldUpsellCreator {
	return NO;
}

- (bool)shouldUpsellForTrack:(id)arg1 {
	return NO;
}

- (bool)shouldShowTabBarUpsell {
	return NO;
}

- (bool)canNotUpsell {
	return YES;
}

- (bool)shouldUpsellForPlaylist:(id)arg1 {
	return NO;
}
%end

%hook SoundCloudPatchedSwiftClassNameUserFeaturesService
- (bool)isNoAudioAdsEnabled {
	return YES;
}

- (bool)isHQAudioFeatureEnabled {
	return YES;
}
%end

%ctor {
	%init(SoundCloudPatchedSwiftClassNamePlayQueueItemTrackEntity = objc_getClass("SoundCloud.PlayQueueItemTrackEntity"),
		SoundCloudPatchedSwiftClassNameUserFeaturesService = objc_getClass("SoundCloud.UserFeaturesService"),
		SoundCloudPatchedSwiftClassNameUpsellManager = objc_getClass("SoundCloud.UpsellManager"),
		SoundCloudPatchedSwiftClassNameAudioAdPlayerEventController = objc_getClass("SoundCloud.AudioAdPlayerEventController"));

}