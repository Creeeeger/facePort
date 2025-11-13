.class public final Lcom/android/systemui/qs/tiles/impl/saver/domain/DataSaverDialogDelegate;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/SystemUIDialog$Delegate;


# instance fields
.field public final backgroundContext:Lkotlin/coroutines/CoroutineContext;

.field public final context:Landroid/content/Context;

.field public final dataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;

.field public final sharedPreferences:Landroid/content/SharedPreferences;

.field public final sysuiDialogFactory:Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;Landroid/content/Context;Lkotlin/coroutines/CoroutineContext;Lcom/android/systemui/statusbar/policy/DataSaverController;Landroid/content/SharedPreferences;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/impl/saver/domain/DataSaverDialogDelegate;->sysuiDialogFactory:Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/impl/saver/domain/DataSaverDialogDelegate;->context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/impl/saver/domain/DataSaverDialogDelegate;->backgroundContext:Lkotlin/coroutines/CoroutineContext;

    iput-object p4, p0, Lcom/android/systemui/qs/tiles/impl/saver/domain/DataSaverDialogDelegate;->dataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;

    iput-object p5, p0, Lcom/android/systemui/qs/tiles/impl/saver/domain/DataSaverDialogDelegate;->sharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public final beforeCreate(Landroid/app/Dialog;)V
    .locals 2

    check-cast p1, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    const v0, 0x104040c

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setTitle(I)V

    const v0, 0x1040408

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setMessage(I)V

    new-instance v0, Lcom/android/systemui/qs/tiles/impl/saver/domain/DataSaverDialogDelegate$beforeCreate$1$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/impl/saver/domain/DataSaverDialogDelegate$beforeCreate$1$1;-><init>(Lcom/android/systemui/qs/tiles/impl/saver/domain/DataSaverDialogDelegate;)V

    const p0, 0x104040b

    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    const/4 p0, 0x0

    const/4 v0, 0x1

    const/high16 v1, 0x1040000

    invoke-virtual {p1, v1, p0, v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;Z)V

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setShowForAllUsers(Landroid/app/Dialog;)V

    return-void
.end method

.method public final createDialog()Lcom/android/systemui/statusbar/phone/SystemUIDialog;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/impl/saver/domain/DataSaverDialogDelegate;->sysuiDialogFactory:Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/impl/saver/domain/DataSaverDialogDelegate;->context:Landroid/content/Context;

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;->create(Lcom/android/systemui/statusbar/phone/SystemUIDialog$Delegate;Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    move-result-object p0

    return-object p0
.end method
