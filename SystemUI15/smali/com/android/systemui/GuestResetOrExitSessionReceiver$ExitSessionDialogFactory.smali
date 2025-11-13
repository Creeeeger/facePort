.class public final Lcom/android/systemui/GuestResetOrExitSessionReceiver$ExitSessionDialogFactory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mClickListenerFactory:Lcom/android/systemui/GuestResetOrExitSessionReceiver$ExitSessionDialogClickListener$Factory;

.field public final mDialogFactory:Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;

.field public final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;Lcom/android/systemui/GuestResetOrExitSessionReceiver$ExitSessionDialogClickListener$Factory;Landroid/content/res/Resources;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/GuestResetOrExitSessionReceiver$ExitSessionDialogFactory;->mDialogFactory:Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;

    iput-object p2, p0, Lcom/android/systemui/GuestResetOrExitSessionReceiver$ExitSessionDialogFactory;->mClickListenerFactory:Lcom/android/systemui/GuestResetOrExitSessionReceiver$ExitSessionDialogClickListener$Factory;

    iput-object p3, p0, Lcom/android/systemui/GuestResetOrExitSessionReceiver$ExitSessionDialogFactory;->mResources:Landroid/content/res/Resources;

    return-void
.end method
