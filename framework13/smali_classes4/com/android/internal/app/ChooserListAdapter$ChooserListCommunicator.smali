.class interface abstract Lcom/android/internal/app/ChooserListAdapter$ChooserListCommunicator;
.super Ljava/lang/Object;
.source "ChooserListAdapter.java"

# interfaces
.implements Lcom/android/internal/app/ResolverListAdapter$ResolverListCommunicator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "ChooserListCommunicator"
.end annotation


# virtual methods
.method public abstract blacklist getMaxRankedTargets()I
.end method

.method public abstract blacklist isSendAction(Landroid/content/Intent;)Z
.end method

.method public abstract blacklist semConvertToChooserTargetForDeviceTarget(Lcom/android/internal/app/chooser/DisplayResolveInfo;)Landroid/service/chooser/ChooserTarget;
.end method

.method public abstract blacklist semCreateCopyButtonResolveInfo()Lcom/android/internal/app/chooser/DisplayResolveInfo;
.end method

.method public abstract blacklist semCreateTempLinkShareButtonResolveInfo()Lcom/android/internal/app/chooser/DisplayResolveInfo;
.end method

.method public abstract blacklist semGetFavoriteSetFromProvider()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/app/ChooserActivity$SemFavoriteAppSource;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist semGetNearbyShareUwbDefaultAngle()F
.end method

.method public abstract blacklist semGetNearbyShareUwbLeftBoundAngle()F
.end method

.method public abstract blacklist semGetNearbyShareUwbRightBoundAngle()F
.end method

.method public abstract blacklist semGetShareActionCount()I
.end method

.method public abstract blacklist semIncludeAudio()Z
.end method

.method public abstract blacklist semIncludeDocument()Z
.end method

.method public abstract blacklist semIncludeLargeFile()Z
.end method

.method public abstract blacklist semIncludeVoice()Z
.end method

.method public abstract blacklist semIsDeviceTargetComponent(Lcom/android/internal/app/chooser/TargetInfo;)Z
.end method

.method public abstract blacklist semIsExifProgressExecuted()Z
.end method

.method public abstract blacklist semIsNeedTempLinkShareButton()Z
.end method

.method public abstract blacklist semNotifyDirectShareDataChanged(I)V
.end method

.method public abstract blacklist semSStarCreateSeeAllAppsResolveInfo()Lcom/android/internal/app/chooser/DisplayResolveInfo;
.end method

.method public abstract blacklist semSStarGetFavoriteDirectInfos()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/app/ResolverActivity$ShareStarItemInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist semSStarGetSeeAllButtonPosition()I
.end method

.method public abstract blacklist semSStarIsShowAlphabetList()Z
.end method

.method public abstract blacklist sendListViewUpdateMessage(Landroid/os/UserHandle;)V
.end method
