.class Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;
.super Ljava/lang/Object;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContentPreviewCoordinator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$LoadUriTask;
    }
.end annotation


# static fields
.field private static final blacklist IMAGE_FADE_IN_MILLIS:I = 0x96

.field private static final blacklist IMAGE_LOAD_INTO_VIEW:I = 0x2

.field private static final blacklist IMAGE_LOAD_TIMEOUT:I = 0x1

.field private static final blacklist SEM_AUDIO_LOAD_INTO_VIEW:I = 0x3e

.field private static final blacklist SEM_AUDIO_LOAD_TIMEOUT:I = 0x3d

.field private static final blacklist SEM_AUDIO_LOAD_TIMEOUT_MILLIS:I = 0x3e8

.field private static final blacklist SEM_COMMON_LOAD_TIMEOUT:I = 0x29

.field private static final blacklist SEM_COMMON_LOAD_TIMEOUT_MILLIS:I = 0xc8

.field private static final blacklist SEM_IMAGE_LOAD_INTO_VIEW:I = 0x66

.field private static final blacklist SEM_MULTI_IMAGE_LOAD_INTO_VIEW:I = 0x5c

.field private static final blacklist SEM_TEXT_LOAD_INTO_VIEW:I = 0x52

.field private static final blacklist SEM_TEXT_LOAD_TIMEOUT:I = 0x51

.field private static final blacklist SEM_TEXT_LOAD_TIMEOUT_MILLIS:I = 0x3e8

.field private static final blacklist SEM_VIDEO_LOAD_INTO_VIEW:I = 0x34

.field private static final blacklist SEM_VIDEO_LOAD_TIMEOUT:I = 0x33

.field private static final blacklist SEM_VIDEO_LOAD_TIMEOUT_MILLIS:I = 0x3e8

.field private static final blacklist SEM_WEB_LOAD_INTO_VIEW:I = 0x48

.field private static final blacklist SEM_WEB_LOAD_TIMEOUT:I = 0x47

.field private static final blacklist SEM_WEB_LOAD_TIMEOUT_MILLIS:I = 0x3e8


# instance fields
.field private blacklist mAtLeastOneLoaded:Z

.field private final blacklist mHandler:Landroid/os/Handler;

.field private blacklist mHideParentOnFail:Z

.field private final blacklist mImageLoadTimeoutMillis:I

.field private final blacklist mParentView:Landroid/view/View;

.field final synthetic blacklist this$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmParentView(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->mParentView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAtLeastOneLoaded(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->mAtLeastOneLoaded:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcancelLoads(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->cancelLoads()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mloadUriIntoView(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;ILandroid/net/Uri;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->loadUriIntoView(ILandroid/net/Uri;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mmaybeHideContentPreview(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->maybeHideContentPreview()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msemLoadUriIntoView(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;ILandroid/net/Uri;IIIILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->semLoadUriIntoView(ILandroid/net/Uri;IIIILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msemLoadUrlIntoView(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;ILjava/lang/String;IIII)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->semLoadUrlIntoView(ILjava/lang/String;IIII)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetupPreDrawForSharedElementTransition(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->setupPreDrawForSharedElementTransition(Landroid/view/View;)V

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity;Landroid/view/View;Z)V
    .locals 1
    .param p2, "parentView"    # Landroid/view/View;
    .param p3, "hideParentOnFail"    # Z

    .line 1029
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->this$0:Lcom/android/internal/app/ChooserActivity;

    .line 1030
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 852
    nop

    .line 853
    invoke-virtual {p1}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/high16 v0, 0x10e0000

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->mImageLoadTimeoutMillis:I

    .line 857
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->mAtLeastOneLoaded:Z

    .line 892
    new-instance p1, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$1;

    invoke-direct {p1, p0}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$1;-><init>(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;)V

    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->mHandler:Landroid/os/Handler;

    .line 1032
    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->mParentView:Landroid/view/View;

    .line 1033
    iput-boolean p3, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->mHideParentOnFail:Z

    .line 1034
    return-void
.end method

.method private blacklist cancelLoads()V
    .locals 2

    .line 1057
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1058
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1059
    return-void
.end method

.method private blacklist collapseParentView()V
    .locals 7

    .line 1088
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->mParentView:Landroid/view/View;

    .line 1089
    .local v0, "v":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1090
    .local v1, "widthSpec":I
    const/4 v3, 0x0

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1091
    .local v2, "heightSpec":I
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 1092
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput v3, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1093
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 1094
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1095
    return-void
.end method

.method private blacklist loadUriIntoView(ILandroid/net/Uri;I)V
    .locals 4
    .param p1, "imageResourceId"    # I
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "extraImages"    # I

    .line 1038
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->mImageLoadTimeoutMillis:I

    int-to-long v1, v1

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1040
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;Landroid/net/Uri;II)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1054
    return-void
.end method

.method private blacklist maybeHideContentPreview()V
    .locals 3

    .line 1062
    sget-boolean v0, Lcom/samsung/android/rune/ViewRune;->SHAREVIA_CHIP_BUTTON_FOR_NEARBY:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemIsShowingChipButton(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1063
    return-void

    .line 1066
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->mAtLeastOneLoaded:Z

    if-nez v0, :cond_4

    .line 1067
    iget-boolean v0, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->mHideParentOnFail:Z

    const-string v1, "ChooserActivity"

    if-eqz v0, :cond_3

    .line 1068
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hiding image preview area. Timed out waiting for preview to load within "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->mImageLoadTimeoutMillis:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "ms."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->collapseParentView()V

    .line 1071
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->shouldShowTabs()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1072
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$mhideStickyContentPreview(Lcom/android/internal/app/ChooserActivity;)V

    goto :goto_0

    .line 1073
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentRootAdapter()Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1074
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getCurrentRootAdapter()Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    move-result-object v0

    .line 1075
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->hideContentPreview()V

    .line 1077
    :cond_2
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->mHideParentOnFail:Z

    .line 1079
    :cond_3
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->this$0:Lcom/android/internal/app/ChooserActivity;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fputmRemoveSharedElements(Lcom/android/internal/app/ChooserActivity;Z)V

    .line 1080
    const-string/jumbo v0, "maybeHideContentPreview: startPostponedEnterTransition"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmEnterTransitionAnimationDelegate(Lcom/android/internal/app/ChooserActivity;)Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$EnterTransitionAnimationDelegate;->markImagePreviewReady()V

    .line 1083
    :cond_4
    return-void
.end method

.method private blacklist semLoadUriIntoView(ILandroid/net/Uri;IIIILjava/lang/String;Ljava/lang/String;)V
    .locals 17
    .param p1, "resourceId"    # I
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "extras"    # I
    .param p4, "contentPreviewType"    # I
    .param p5, "mainPreviewTitleId"    # I
    .param p6, "subPreviewTitleId"    # I
    .param p7, "mainPreviewTitle"    # Ljava/lang/String;
    .param p8, "subPreviewTitle"    # Ljava/lang/String;

    .line 1106
    move-object/from16 v11, p0

    move/from16 v12, p4

    iget-object v0, v11, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0, v12}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemGetOriginPreviewType(Lcom/android/internal/app/ChooserActivity;I)I

    move-result v13

    .line 1108
    .local v13, "previewType":I
    const/4 v0, 0x1

    if-ne v13, v0, :cond_1

    .line 1109
    const/4 v0, 0x1

    .line 1110
    .local v0, "timeout":I
    iget v1, v11, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->mImageLoadTimeoutMillis:I

    .line 1112
    .local v1, "timeout_millis":I
    const v2, 0x8000

    and-int/2addr v2, v12

    if-eqz v2, :cond_0

    .line 1113
    const/16 v2, 0x5c

    move v14, v0

    move v15, v1

    move/from16 v16, v2

    .local v2, "msg_what":I
    goto :goto_0

    .line 1115
    .end local v2    # "msg_what":I
    :cond_0
    const/16 v2, 0x66

    move v14, v0

    move v15, v1

    move/from16 v16, v2

    .restart local v2    # "msg_what":I
    goto :goto_0

    .line 1117
    .end local v0    # "timeout":I
    .end local v1    # "timeout_millis":I
    .end local v2    # "msg_what":I
    :cond_1
    const/16 v0, 0x8

    if-ne v13, v0, :cond_2

    .line 1118
    const/16 v0, 0x3d

    .line 1119
    .restart local v0    # "timeout":I
    const/16 v1, 0x3e8

    .line 1120
    .restart local v1    # "timeout_millis":I
    const/16 v2, 0x3e

    move v14, v0

    move v15, v1

    move/from16 v16, v2

    .restart local v2    # "msg_what":I
    goto :goto_0

    .line 1121
    .end local v0    # "timeout":I
    .end local v1    # "timeout_millis":I
    .end local v2    # "msg_what":I
    :cond_2
    const/4 v0, 0x4

    if-ne v13, v0, :cond_3

    .line 1122
    const/16 v0, 0x33

    .line 1123
    .restart local v0    # "timeout":I
    const/16 v1, 0x3e8

    .line 1124
    .restart local v1    # "timeout_millis":I
    const/16 v2, 0x34

    move v14, v0

    move v15, v1

    move/from16 v16, v2

    .restart local v2    # "msg_what":I
    goto :goto_0

    .line 1125
    .end local v0    # "timeout":I
    .end local v1    # "timeout_millis":I
    .end local v2    # "msg_what":I
    :cond_3
    const/4 v0, 0x3

    if-ne v13, v0, :cond_4

    .line 1126
    const/16 v0, 0x51

    .line 1127
    .restart local v0    # "timeout":I
    const/16 v1, 0x3e8

    .line 1128
    .restart local v1    # "timeout_millis":I
    const/16 v2, 0x52

    move v14, v0

    move v15, v1

    move/from16 v16, v2

    .restart local v2    # "msg_what":I
    goto :goto_0

    .line 1130
    .end local v0    # "timeout":I
    .end local v1    # "timeout_millis":I
    .end local v2    # "msg_what":I
    :cond_4
    const/4 v0, 0x1

    .line 1131
    .restart local v0    # "timeout":I
    iget v1, v11, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->mImageLoadTimeoutMillis:I

    .line 1132
    .restart local v1    # "timeout_millis":I
    const/16 v2, 0x66

    move v14, v0

    move v15, v1

    move/from16 v16, v2

    .line 1135
    .end local v0    # "timeout":I
    .end local v1    # "timeout_millis":I
    .local v14, "timeout":I
    .local v15, "timeout_millis":I
    .local v16, "msg_what":I
    :goto_0
    iget-object v0, v11, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->mHandler:Landroid/os/Handler;

    int-to-long v1, v15

    invoke-virtual {v0, v14, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1136
    sget-object v10, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v9, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$$ExternalSyntheticLambda1;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move v3, v13

    move/from16 v4, v16

    move/from16 v5, p1

    move/from16 v6, p3

    move/from16 v7, p5

    move/from16 v8, p6

    move-object v11, v9

    move-object/from16 v9, p7

    move-object v12, v10

    move-object/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;Landroid/net/Uri;IIIIIILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v12, v11}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1151
    return-void
.end method

.method private blacklist semLoadUrlIntoView(ILjava/lang/String;IIII)V
    .locals 9
    .param p1, "resourceId"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "extras"    # I
    .param p4, "contentPreviewType"    # I
    .param p5, "mainPreviewTitleId"    # I
    .param p6, "subPreviewTitleId"    # I

    .line 1157
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x47

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1158
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v8, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$$ExternalSyntheticLambda0;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p2

    move v4, p1

    move v5, p3

    move v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;Ljava/lang/String;IIII)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1172
    return-void
.end method

.method private blacklist setupPreDrawForSharedElementTransition(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 1012
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$2;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$2;-><init>(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1027
    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$loadUriIntoView$0$com-android-internal-app-ChooserActivity$ContentPreviewCoordinator(Landroid/net/Uri;II)V
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "imageResourceId"    # I
    .param p3, "extraImages"    # I

    .line 1041
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1046
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1048
    .local v0, "size":I
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->this$0:Lcom/android/internal/app/ChooserActivity;

    new-instance v2, Landroid/util/Size;

    invoke-direct {v2, v0, v0}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v1, p1, v2}, Lcom/android/internal/app/ChooserActivity;->loadThumbnail(Landroid/net/Uri;Landroid/util/Size;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1049
    .local v1, "bmp":Landroid/graphics/Bitmap;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 1050
    .local v2, "msg":Landroid/os/Message;
    const/4 v3, 0x2

    iput v3, v2, Landroid/os/Message;->what:I

    .line 1051
    new-instance v9, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$LoadUriTask;

    move-object v3, v9

    move-object v4, p0

    move v5, p2

    move-object v6, p1

    move v7, p3

    move-object v8, v1

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$LoadUriTask;-><init>(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;ILandroid/net/Uri;ILandroid/graphics/Bitmap;)V

    iput-object v9, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1052
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1053
    return-void

    .line 1042
    .end local v0    # "size":I
    .end local v1    # "bmp":Landroid/graphics/Bitmap;
    .end local v2    # "msg":Landroid/os/Message;
    :cond_1
    :goto_0
    const-string v0, "ChooserActivity"

    const-string v1, "ChooserActivity is finished!!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    return-void
.end method

.method synthetic blacklist lambda$semLoadUriIntoView$1$com-android-internal-app-ChooserActivity$ContentPreviewCoordinator(Landroid/net/Uri;IIIIIILjava/lang/String;Ljava/lang/String;)V
    .locals 16
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "previewType"    # I
    .param p3, "msg_what"    # I
    .param p4, "resourceId"    # I
    .param p5, "extras"    # I
    .param p6, "mainPreviewTitleId"    # I
    .param p7, "subPreviewTitleId"    # I
    .param p8, "mainPreviewTitle"    # Ljava/lang/String;
    .param p9, "subPreviewTitle"    # Ljava/lang/String;

    .line 1137
    move-object/from16 v10, p0

    iget-object v0, v10, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->isDestroyed()Z

    move-result v0

    const-string v1, "ChooserActivity"

    if-nez v0, :cond_2

    iget-object v0, v10, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    move/from16 v12, p2

    move/from16 v15, p3

    goto :goto_0

    .line 1142
    :cond_0
    iget-object v0, v10, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->this$0:Lcom/android/internal/app/ChooserActivity;

    new-instance v2, Landroid/util/Size;

    const/16 v3, 0xc8

    invoke-direct {v2, v3, v3}, Landroid/util/Size;-><init>(II)V

    move-object/from16 v11, p1

    move/from16 v12, p2

    invoke-virtual {v0, v11, v2, v12}, Lcom/android/internal/app/ChooserActivity;->semLoadThumbnail(Landroid/net/Uri;Landroid/util/Size;I)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 1143
    .local v13, "bmp":Landroid/graphics/Bitmap;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v14

    .line 1144
    .local v14, "msg":Landroid/os/Message;
    if-nez v13, :cond_1

    .line 1145
    const-string v0, "failed get thumbnail"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    :cond_1
    move/from16 v15, p3

    iput v15, v14, Landroid/os/Message;->what:I

    .line 1148
    new-instance v9, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$LoadUriTask;

    move-object v0, v9

    move-object/from16 v1, p0

    move/from16 v2, p4

    move-object/from16 v3, p1

    move/from16 v4, p5

    move-object v5, v13

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object v11, v9

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$LoadUriTask;-><init>(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;ILandroid/net/Uri;ILandroid/graphics/Bitmap;IILjava/lang/String;Ljava/lang/String;)V

    iput-object v11, v14, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1149
    iget-object v0, v10, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v14}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1150
    return-void

    .line 1137
    .end local v13    # "bmp":Landroid/graphics/Bitmap;
    .end local v14    # "msg":Landroid/os/Message;
    :cond_2
    move/from16 v12, p2

    move/from16 v15, p3

    .line 1138
    :goto_0
    const-string v0, "ChooserActivity is finished!!"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    return-void
.end method

.method synthetic blacklist lambda$semLoadUrlIntoView$2$com-android-internal-app-ChooserActivity$ContentPreviewCoordinator(Ljava/lang/String;IIII)V
    .locals 16
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "resourceId"    # I
    .param p3, "extras"    # I
    .param p4, "mainPreviewTitleId"    # I
    .param p5, "subPreviewTitleId"    # I

    .line 1159
    move-object/from16 v10, p0

    iget-object v0, v10, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v10, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object/from16 v12, p1

    goto :goto_0

    .line 1164
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v11, v0

    .line 1165
    .local v11, "webMetaData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v0, v10, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->this$0:Lcom/android/internal/app/ChooserActivity;

    move-object/from16 v12, p1

    invoke-virtual {v0, v12, v11}, Lcom/android/internal/app/ChooserActivity;->semLoadWebMetaData(Ljava/lang/String;Ljava/util/HashMap;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 1166
    .local v13, "bmp":Landroid/graphics/Bitmap;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v14

    .line 1167
    .local v14, "msg":Landroid/os/Message;
    const/16 v0, 0x48

    iput v0, v14, Landroid/os/Message;->what:I

    .line 1168
    new-instance v15, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$LoadUriTask;

    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 1169
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    move-object v0, v15

    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v4, p3

    move-object v5, v13

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-direct/range {v0 .. v9}, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator$LoadUriTask;-><init>(Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;ILandroid/net/Uri;ILandroid/graphics/Bitmap;IILjava/lang/String;Ljava/lang/String;)V

    iput-object v15, v14, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1170
    iget-object v0, v10, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v14}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1171
    return-void

    .line 1159
    .end local v11    # "webMetaData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v13    # "bmp":Landroid/graphics/Bitmap;
    .end local v14    # "msg":Landroid/os/Message;
    :cond_1
    move-object/from16 v12, p1

    .line 1160
    :goto_0
    const-string v0, "ChooserActivity"

    const-string v1, "ChooserActivity is finished!!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    return-void
.end method

.method public blacklist semMaybeHideContentPreview()V
    .locals 4

    .line 1175
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ContentPreviewCoordinator;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x29

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1176
    return-void
.end method
