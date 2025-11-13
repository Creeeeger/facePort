.class public final Lcom/samsung/android/settings/connection/SecMultiSIMTabInterface$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/connection/SecMultiSIMTabInterface;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/connection/SecMultiSIMTabInterface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/connection/SecMultiSIMTabInterface$1;->this$0:Lcom/samsung/android/settings/connection/SecMultiSIMTabInterface;

    return-void
.end method


# virtual methods
.method public final onTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/connection/SecMultiSIMTabInterface$1;->this$0:Lcom/samsung/android/settings/connection/SecMultiSIMTabInterface;

    invoke-interface {p0, p1}, Lcom/samsung/android/settings/connection/SecMultiSIMTabInterface;->onTabChanged(Lcom/google/android/material/tabs/TabLayout$Tab;)V

    return-void
.end method

.method public final onTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    return-void
.end method
