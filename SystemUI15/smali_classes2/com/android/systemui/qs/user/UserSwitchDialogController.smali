.class public final Lcom/android/systemui/qs/user/UserSwitchDialogController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final USER_SETTINGS_INTENT:Landroid/content/Intent;


# instance fields
.field public final activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final dialogFactory:Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;

.field public final dialogTransitionAnimator:Lcom/android/systemui/animation/DialogTransitionAnimator;

.field public final falsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field public final uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field public final userDetailViewAdapterProvider:Ljavax/inject/Provider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/qs/user/UserSwitchDialogController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/user/UserSwitchDialogController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.USER_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/qs/user/UserSwitchDialogController;->USER_SETTINGS_INTENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Ljavax/inject/Provider;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/animation/DialogTransitionAnimator;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider;",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            "Lcom/android/systemui/plugins/FalsingManager;",
            "Lcom/android/systemui/animation/DialogTransitionAnimator;",
            "Lcom/android/internal/logging/UiEventLogger;",
            "Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/user/UserSwitchDialogController;->userDetailViewAdapterProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/qs/user/UserSwitchDialogController;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    iput-object p3, p0, Lcom/android/systemui/qs/user/UserSwitchDialogController;->falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    iput-object p4, p0, Lcom/android/systemui/qs/user/UserSwitchDialogController;->dialogTransitionAnimator:Lcom/android/systemui/animation/DialogTransitionAnimator;

    iput-object p5, p0, Lcom/android/systemui/qs/user/UserSwitchDialogController;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    iput-object p6, p0, Lcom/android/systemui/qs/user/UserSwitchDialogController;->dialogFactory:Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;

    return-void
.end method
