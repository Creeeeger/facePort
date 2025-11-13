.class Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment$2;
.super Ljava/lang/Object;
.source "TabFragment.java"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;)V
    .locals 0

    .line 300
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment$2;->this$0:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;

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

    .line 303
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment$2;->this$0:Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/develop/nearbywifi/view/TabFragment;->selectTab(I)V

    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    return-void
.end method
