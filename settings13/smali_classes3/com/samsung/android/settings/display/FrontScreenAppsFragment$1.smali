.class Lcom/samsung/android/settings/display/FrontScreenAppsFragment$1;
.super Ljava/lang/Object;
.source "FrontScreenAppsFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->setEmptyTextYPos()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$1;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$1;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetmListContainer(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$1;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetmListContainer(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 184
    iget-object v0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$1;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetmListContainer(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x3

    .line 185
    iget-object v1, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$1;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetmEmptyViewText(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 186
    iget-object p0, p0, Lcom/samsung/android/settings/display/FrontScreenAppsFragment$1;->this$0:Lcom/samsung/android/settings/display/FrontScreenAppsFragment;

    invoke-static {p0}, Lcom/samsung/android/settings/display/FrontScreenAppsFragment;->-$$Nest$fgetmEmptyViewText(Lcom/samsung/android/settings/display/FrontScreenAppsFragment;)Landroid/widget/TextView;

    move-result-object p0

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setGravity(I)V

    :cond_0
    return-void
.end method
