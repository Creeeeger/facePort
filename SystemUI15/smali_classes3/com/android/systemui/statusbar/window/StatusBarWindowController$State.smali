.class public final Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mChangeStatusBarHeight:Z

.field public mForceStatusBarVisible:Z

.field public mIsAODAmbientWallpaperWakingUp:Z

.field public mIsLaunchAnimationRunning:Z

.field public mShouldHideNotificationShadeInMirror:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;->mIsAODAmbientWallpaperWakingUp:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;->mShouldHideNotificationShadeInMirror:Z

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/window/StatusBarWindowController$State;-><init>()V

    return-void
.end method
