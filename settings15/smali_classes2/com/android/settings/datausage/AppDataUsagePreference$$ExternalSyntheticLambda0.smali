.class public final synthetic Lcom/android/settings/datausage/AppDataUsagePreference$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/datausage/AppDataUsagePreference;

.field public final synthetic f$1:Lcom/android/settingslib/net/UidDetailProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/datausage/AppDataUsagePreference;Lcom/android/settingslib/net/UidDetailProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsagePreference$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/datausage/AppDataUsagePreference;

    iput-object p2, p0, Lcom/android/settings/datausage/AppDataUsagePreference$$ExternalSyntheticLambda0;->f$1:Lcom/android/settingslib/net/UidDetailProvider;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsagePreference$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/datausage/AppDataUsagePreference;

    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsagePreference$$ExternalSyntheticLambda0;->f$1:Lcom/android/settingslib/net/UidDetailProvider;

    iget-object v1, v0, Lcom/android/settings/datausage/AppDataUsagePreference;->mItem:Lcom/android/settingslib/AppItem;

    iget v1, v1, Lcom/android/settingslib/AppItem;->key:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/settingslib/net/UidDetailProvider;->getUidDetail(IZ)Lcom/android/settingslib/net/UidDetail;

    move-result-object p0

    iput-object p0, v0, Lcom/android/settings/datausage/AppDataUsagePreference;->mDetail:Lcom/android/settingslib/net/UidDetail;

    new-instance p0, Lcom/android/settings/datausage/AppDataUsagePreference$$ExternalSyntheticLambda1;

    invoke-direct {p0, v0}, Lcom/android/settings/datausage/AppDataUsagePreference$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/datausage/AppDataUsagePreference;)V

    invoke-static {p0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
