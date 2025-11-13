.class public final Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final mContext:Landroid/content/Context;

.field public final mDialogTransitionAnimator:Lcom/android/systemui/animation/DialogTransitionAnimator;

.field public final mSysUiState:Lcom/android/systemui/model/SysUiState;

.field public final mSystemUIDialogManager:Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;Lcom/android/systemui/model/SysUiState;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/animation/DialogTransitionAnimator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;->mSystemUIDialogManager:Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;->mDialogTransitionAnimator:Lcom/android/systemui/animation/DialogTransitionAnimator;

    return-void
.end method


# virtual methods
.method public final create()Lcom/android/systemui/statusbar/phone/SystemUIDialog;
    .locals 3

    new-instance v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory$1;-><init>(Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->$r8$clinit:I

    const v2, 0x7f140603

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;->create(Landroid/content/Context;ILcom/android/systemui/statusbar/phone/DialogDelegate;)Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    move-result-object p0

    return-object p0
.end method

.method public final create(Landroid/content/Context;ILcom/android/systemui/statusbar/phone/DialogDelegate;)Lcom/android/systemui/statusbar/phone/SystemUIDialog;
    .locals 10

    new-instance v9, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;->mDialogTransitionAnimator:Lcom/android/systemui/animation/DialogTransitionAnimator;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;->mSystemUIDialogManager:Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    move-object v0, v9

    move-object v1, p1

    move v2, p2

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;IZLcom/android/systemui/statusbar/phone/SystemUIDialogManager;Lcom/android/systemui/model/SysUiState;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/animation/DialogTransitionAnimator;Lcom/android/systemui/statusbar/phone/DialogDelegate;)V

    return-object v9
.end method

.method public final create(Lcom/android/systemui/statusbar/phone/SystemUIDialog$Delegate;Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/SystemUIDialog;
    .locals 1

    sget v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->$r8$clinit:I

    const v0, 0x7f140603

    invoke-virtual {p0, p2, v0, p1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog$Factory;->create(Landroid/content/Context;ILcom/android/systemui/statusbar/phone/DialogDelegate;)Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    move-result-object p0

    return-object p0
.end method
