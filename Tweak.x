#import <UIKit/UIKit.h>

%hook PlayQueueTrack
- (bool)isMonetizable {
	return NO;
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