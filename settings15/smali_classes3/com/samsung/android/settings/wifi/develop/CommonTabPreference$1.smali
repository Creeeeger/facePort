.class public final Lcom/samsung/android/settings/wifi/develop/CommonTabPreference$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/develop/CommonTabPreference;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/develop/CommonTabPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/CommonTabPreference$1;->this$0:Lcom/samsung/android/settings/wifi/develop/CommonTabPreference;

    return-void
.end method


# virtual methods
.method public final onTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 2

    iget p1, p1, Lcom/google/android/material/tabs/TabLayout$Tab;->position:I

    const-string v0, "onTabSelected: "

    const-string v1, "CommonTabPreference"

    invoke-static {p1, v0, v1}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/CommonTabPreference$1;->this$0:Lcom/samsung/android/settings/wifi/develop/CommonTabPreference;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/CommonTabPreference;->mOnTabSelectedListener:Lcom/samsung/android/settings/wifi/develop/OnTabSelectedListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/samsung/android/settings/wifi/develop/OnTabSelectedListener;->onTabSelected(I)V

    :cond_0
    return-void
.end method

.method public final onTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    return-void
.end method
