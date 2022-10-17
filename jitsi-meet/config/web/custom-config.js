config.toolbarButtons= [
    'camera',
    'chat',
    'closedcaptions',
    'desktop',
    'download',
    'feedback',
    'filmstrip',
    'fullscreen',
    'hangup',
    'help',
    'invite',
    'microphone',
    'participants-pane',
    'profile',
    'raisehand',
    'select-background',
    'settings',
    'shortcuts',
    'stats',
    'tileview',
    'toggle-camera',
    'videoquality',
    '__end'
 ];
config.hideConferenceSubject=true;
config.videoQuality= {
    preferredCodec: 'VP9',
    enforcePreferredCodec: true,
    maxBitratesVideo: {
            H264: {
                low: 200000,
                standard: 500000,
                high: 1500000
            },
            VP8 : {
                low: 200000,
                standard: 500000,
                high: 1500000
            },
            VP9: {
                low: 100000,
                standard: 300000,
                high: 1200000
            }
    },    
    minHeightForQualityLvl: {
        360: 'standard',
        720: 'high'
    },
    resizeDesktopForPresenter: false
};
