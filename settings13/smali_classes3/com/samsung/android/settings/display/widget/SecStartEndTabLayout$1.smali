.class Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout$1;
.super Ljava/lang/Object;
.source "SecStartEndTabLayout.java"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;->init(IILcom/samsung/android/settings/display/widget/SecStartEndTabLayout$OnTabSelectedListener;Landroidx/arch/core/util/Function;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;

.field final synthetic val$listener:Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout$OnTabSelectedListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout$OnTabSelectedListener;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout$1;->this$0:Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;

    iput-object p2, p0, Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout$1;->val$listener:Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout$OnTabSelectedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    return-void
.end method

.method public onTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout$1;->val$listener:Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout$OnTabSelectedListener;

    invoke-interface {v0}, Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout$OnTabSelectedListener;->onPreTabSelected()V

    .line 64
    iget-object v0, p0, Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout$1;->this$0:Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result p1

    invoke-static {v0, p1}, Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;->-$$Nest$fputmTabIndex(Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;I)V

    .line 65
    iget-object p1, p0, Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout$1;->val$listener:Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout$OnTabSelectedListener;

    iget-object v0, p0, Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout$1;->this$0:Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;

    invoke-static {v0}, Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;->-$$Nest$fgetmTabIndex(Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout$1;->this$0:Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;

    invoke-static {v1}, Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;->-$$Nest$fgetmTimes(Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;)[I

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout$1;->this$0:Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;

    invoke-static {p0}, Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;->-$$Nest$fgetmTabIndex(Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout;)I

    move-result p0

    aget p0, v1, p0

    invoke-interface {p1, v0, p0}, Lcom/samsung/android/settings/display/widget/SecStartEndTabLayout$OnTabSelectedListener;->onTabSelected(II)V

    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    return-void
.end method
