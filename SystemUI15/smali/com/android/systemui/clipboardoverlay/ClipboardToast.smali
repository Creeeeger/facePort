.class public final Lcom/android/systemui/clipboardoverlay/ClipboardToast;
.super Landroid/widget/Toast$Callback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mCopiedToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/Toast$Callback;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/clipboardoverlay/ClipboardToast;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onToastHidden()V
    .locals 1

    invoke-super {p0}, Landroid/widget/Toast$Callback;->onToastHidden()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/clipboardoverlay/ClipboardToast;->mCopiedToast:Landroid/widget/Toast;

    return-void
.end method
