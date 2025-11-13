.class public final Lcom/android/systemui/qs/customize/QSBlurPopUpMenu$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/customize/QSBlurPopUpMenu;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/customize/QSBlurPopUpMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSBlurPopUpMenu$2;->this$0:Lcom/android/systemui/qs/customize/QSBlurPopUpMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSBlurPopUpMenu$2;->this$0:Lcom/android/systemui/qs/customize/QSBlurPopUpMenu;

    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSBlurPopUpMenu;->dismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    :cond_0
    return-void
.end method
