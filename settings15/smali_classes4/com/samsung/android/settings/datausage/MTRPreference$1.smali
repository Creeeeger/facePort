.class public final Lcom/samsung/android/settings/datausage/MTRPreference$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/datausage/MTRPreference;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/datausage/MTRPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/MTRPreference$1;->this$0:Lcom/samsung/android/settings/datausage/MTRPreference;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    const-string v0, "MTRPreference"

    const-string v1, "click"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/datausage/MTRPreference$1;->this$0:Lcom/samsung/android/settings/datausage/MTRPreference;

    iget-object p0, p0, Lcom/samsung/android/settings/datausage/MTRPreference;->mListener:Landroid/view/View$OnClickListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
