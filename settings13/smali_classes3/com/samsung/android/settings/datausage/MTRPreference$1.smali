.class Lcom/samsung/android/settings/datausage/MTRPreference$1;
.super Ljava/lang/Object;
.source "MTRPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/datausage/MTRPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/datausage/MTRPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/datausage/MTRPreference;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/samsung/android/settings/datausage/MTRPreference$1;->this$0:Lcom/samsung/android/settings/datausage/MTRPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string v0, "MTRPreference"

    const-string v1, "click"

    .line 47
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object p0, p0, Lcom/samsung/android/settings/datausage/MTRPreference$1;->this$0:Lcom/samsung/android/settings/datausage/MTRPreference;

    iget-object p0, p0, Lcom/samsung/android/settings/datausage/MTRPreference;->mListener:Landroid/view/View$OnClickListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
