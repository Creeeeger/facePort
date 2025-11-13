.class Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoTabFragment$1;
.super Ljava/lang/Object;
.source "ConnectionInfoTabFragment.java"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoTabFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoTabFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoTabFragment;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoTabFragment$1;->this$0:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoTabFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    return-void
.end method

.method public onTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoTabFragment$1;->this$0:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoTabFragment;

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result p1

    invoke-static {v0, p1}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoTabFragment;->-$$Nest$fputmCurrentTab(Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoTabFragment;I)V

    .line 66
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoTabFragment$1;->this$0:Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoTabFragment;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoTabFragment;->-$$Nest$fgetmCurrentTab(Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoTabFragment;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoTabFragment;->-$$Nest$mchangeView(Lcom/samsung/android/settings/wifi/develop/connectioninfo/ConnectionInfoTabFragment;I)V

    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    return-void
.end method
