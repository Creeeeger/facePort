.class public final Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final fadeoutDuration:J

.field public mApps:[Landroid/view/RemoteAnimationTarget;

.field public mFinishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

.field public final mNonApps:[Landroid/view/RemoteAnimationTarget;

.field public final mWallpapers:[Landroid/view/RemoteAnimationTarget;

.field public final startTime:J


# direct methods
.method private constructor <init>(IJJ[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;->startTime:J

    iput-wide p4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;->fadeoutDuration:J

    iput-object p6, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;->mApps:[Landroid/view/RemoteAnimationTarget;

    iput-object p7, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;->mWallpapers:[Landroid/view/RemoteAnimationTarget;

    iput-object p8, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;->mNonApps:[Landroid/view/RemoteAnimationTarget;

    iput-object p9, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;->mFinishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    return-void
.end method

.method public synthetic constructor <init>(IJJ[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;I)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/keyguard/KeyguardViewMediator$StartKeyguardExitAnimParams;-><init>(IJJ[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V

    return-void
.end method
