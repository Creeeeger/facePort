.class Landroid/preference/PreferenceActivity$5;
.super Ljava/lang/Object;
.source "PreferenceActivity.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/preference/PreferenceActivity;


# direct methods
.method constructor blacklist <init>(Landroid/preference/PreferenceActivity;)V
    .locals 0
    .param p1, "this$0"    # Landroid/preference/PreferenceActivity;

    .line 800
    iput-object p1, p0, Landroid/preference/PreferenceActivity$5;->this$0:Landroid/preference/PreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .line 804
    iget-object v0, p0, Landroid/preference/PreferenceActivity$5;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {v0}, Landroid/preference/PreferenceActivity;->-$$Nest$fgetmEnableSplitBar(Landroid/preference/PreferenceActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 805
    return-void

    .line 809
    :cond_0
    const/4 v0, 0x0

    .line 810
    .local v0, "mRightLayoutStartPosition":F
    iget-object v1, p0, Landroid/preference/PreferenceActivity$5;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {v1}, Landroid/preference/PreferenceActivity;->-$$Nest$fgetmIsRTL(Landroid/preference/PreferenceActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 811
    iget-object v1, p0, Landroid/preference/PreferenceActivity$5;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {v1}, Landroid/preference/PreferenceActivity;->-$$Nest$fgetmHeadersContainer(Landroid/preference/PreferenceActivity;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getX()F

    move-result v0

    goto :goto_0

    .line 814
    :cond_1
    iget-object v1, p0, Landroid/preference/PreferenceActivity$5;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {v1}, Landroid/preference/PreferenceActivity;->-$$Nest$fgetmPrefsContainer(Landroid/preference/PreferenceActivity;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getX()F

    move-result v0

    .line 818
    :goto_0
    iget-object v1, p0, Landroid/preference/PreferenceActivity$5;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {v1}, Landroid/preference/PreferenceActivity;->-$$Nest$fgetmIsDeviceDefault(Landroid/preference/PreferenceActivity;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/preference/PreferenceActivity$5;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {v1}, Landroid/preference/PreferenceActivity;->-$$Nest$fgetmSplitBarView(Landroid/preference/PreferenceActivity;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 819
    iget-object v1, p0, Landroid/preference/PreferenceActivity$5;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {v1}, Landroid/preference/PreferenceActivity;->-$$Nest$fgetmSplitBarView(Landroid/preference/PreferenceActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float v1, v0, v1

    .line 820
    .local v1, "x":F
    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-gez v2, :cond_2

    .line 821
    const/4 v1, 0x0

    .line 823
    :cond_2
    iget-object v2, p0, Landroid/preference/PreferenceActivity$5;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {v2}, Landroid/preference/PreferenceActivity;->-$$Nest$fgetmSplitBarView(Landroid/preference/PreferenceActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v2

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_3

    .line 824
    iget-object v2, p0, Landroid/preference/PreferenceActivity$5;->this$0:Landroid/preference/PreferenceActivity;

    invoke-static {v2}, Landroid/preference/PreferenceActivity;->-$$Nest$fgetmSplitBarView(Landroid/preference/PreferenceActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setX(F)V

    .line 827
    .end local v1    # "x":F
    :cond_3
    return-void
.end method
