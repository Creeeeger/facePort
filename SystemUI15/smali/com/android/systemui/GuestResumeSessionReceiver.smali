.class public final Lcom/android/systemui/GuestResumeSessionReceiver;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final SETTING_GUEST_HAS_LOGGED_IN:Ljava/lang/String; = "systemui.guest_has_logged_in"


# instance fields
.field public final mGuestSessionNotification:Lcom/android/systemui/GuestSessionNotification;

.field public final mMainExecutor:Ljava/util/concurrent/Executor;

.field public mNewSessionDialog:Landroid/app/AlertDialog;

.field public final mResetSessionDialogFactory:Lcom/android/systemui/GuestResetOrExitSessionReceiver$ResetSessionDialogFactory;

.field public final mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

.field public final mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/GuestSessionNotification;Lcom/android/systemui/GuestResetOrExitSessionReceiver$ResetSessionDialogFactory;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/GuestResumeSessionReceiver$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/GuestResumeSessionReceiver$1;-><init>(Lcom/android/systemui/GuestResumeSessionReceiver;)V

    iput-object v0, p0, Lcom/android/systemui/GuestResumeSessionReceiver;->mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    iput-object p1, p0, Lcom/android/systemui/GuestResumeSessionReceiver;->mMainExecutor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/android/systemui/GuestResumeSessionReceiver;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    iput-object p3, p0, Lcom/android/systemui/GuestResumeSessionReceiver;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    iput-object p4, p0, Lcom/android/systemui/GuestResumeSessionReceiver;->mGuestSessionNotification:Lcom/android/systemui/GuestSessionNotification;

    iput-object p5, p0, Lcom/android/systemui/GuestResumeSessionReceiver;->mResetSessionDialogFactory:Lcom/android/systemui/GuestResetOrExitSessionReceiver$ResetSessionDialogFactory;

    return-void
.end method
