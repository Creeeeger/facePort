.class public final Lcom/android/systemui/user/ui/dialog/UserSwitchDialog;
.super Lcom/android/systemui/statusbar/phone/SystemUIDialog;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final USER_SETTINGS_INTENT:Landroid/content/Intent;

.field public static final USER_SETTINGS_KT_TWO_PHONE_INTENT:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/user/ui/dialog/UserSwitchDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/user/ui/dialog/UserSwitchDialog$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.USER_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/user/ui/dialog/UserSwitchDialog;->USER_SETTINGS_INTENT:Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.kt.menu.action.KT_TWOPHONE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/user/ui/dialog/UserSwitchDialog;->USER_SETTINGS_KT_TWO_PHONE_INTENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/animation/DialogTransitionAnimator;)V
    .locals 7

    const v0, 0x7f140604

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;I)V

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setShowForAllUsers(Landroid/app/Dialog;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    const p1, 0x7f130e94

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setTitle(I)V

    new-instance p1, Lcom/android/systemui/user/ui/dialog/UserSwitchDialog$1;

    invoke-direct {p1, p3}, Lcom/android/systemui/user/ui/dialog/UserSwitchDialog$1;-><init>(Lcom/android/internal/logging/UiEventLogger;)V

    const v0, 0x7f130ef1

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance p1, Lcom/android/systemui/user/ui/dialog/UserSwitchDialog$2;

    move-object v1, p1

    move-object v2, p4

    move-object v3, p3

    move-object v4, p6

    move-object v5, p0

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/user/ui/dialog/UserSwitchDialog$2;-><init>(Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/animation/DialogTransitionAnimator;Lcom/android/systemui/user/ui/dialog/UserSwitchDialog;Lcom/android/systemui/plugins/ActivityStarter;)V

    const/4 p3, 0x0

    const p4, 0x7f130f19

    invoke-virtual {p0, p4, p1, p3}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;Z)V

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    const/16 p3, 0x51

    invoke-virtual {p1, p3}, Landroid/view/Window;->setGravity(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p3, 0x7f0d03bb

    const/4 p4, 0x0

    invoke-virtual {p1, p3, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    const p3, 0x7f0a049f

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-static {p1, p2}, Lcom/android/systemui/qs/PseudoGridView$ViewGroupAdapterBridge;->link(Landroid/view/ViewGroup;Landroid/widget/BaseAdapter;)V

    new-instance p1, Lcom/android/systemui/user/ui/dialog/DialogShowerImpl;

    invoke-direct {p1, p0, p6}, Lcom/android/systemui/user/ui/dialog/DialogShowerImpl;-><init>(Landroid/app/Dialog;Lcom/android/systemui/animation/DialogTransitionAnimator;)V

    iput-object p1, p2, Lcom/android/systemui/qs/tiles/UserDetailView$Adapter;->mDialogShower:Lcom/android/systemui/qs/user/UserSwitchDialogController$DialogShower;

    return-void
.end method
