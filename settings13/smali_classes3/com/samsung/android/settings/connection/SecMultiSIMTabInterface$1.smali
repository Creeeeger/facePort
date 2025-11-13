.class Lcom/samsung/android/settings/connection/SecMultiSIMTabInterface$1;
.super Ljava/lang/Object;
.source "SecMultiSIMTabInterface.java"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/connection/SecMultiSIMTabInterface;->applyTabViewIfNeeded(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/connection/SecMultiSIMTabInterface;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/connection/SecMultiSIMTabInterface;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/samsung/android/settings/connection/SecMultiSIMTabInterface$1;->this$0:Lcom/samsung/android/settings/connection/SecMultiSIMTabInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    return-void
.end method

.method public onTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/samsung/android/settings/connection/SecMultiSIMTabInterface$1;->this$0:Lcom/samsung/android/settings/connection/SecMultiSIMTabInterface;

    invoke-interface {p0, p1}, Lcom/samsung/android/settings/connection/SecMultiSIMTabInterface;->onTabChanged(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    return-void
.end method
