.class public final synthetic Lcom/android/settings/datausage/DataSaverBackend$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/datausage/DataSaverBackend$1;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/datausage/DataSaverBackend$1;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/datausage/DataSaverBackend$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/datausage/DataSaverBackend$1;

    iput p2, p0, Lcom/android/settings/datausage/DataSaverBackend$1$$ExternalSyntheticLambda0;->f$1:I

    iput p3, p0, Lcom/android/settings/datausage/DataSaverBackend$1$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/datausage/DataSaverBackend$1;

    iget v1, p0, Lcom/android/settings/datausage/DataSaverBackend$1$$ExternalSyntheticLambda0;->f$1:I

    iget p0, p0, Lcom/android/settings/datausage/DataSaverBackend$1$$ExternalSyntheticLambda0;->f$2:I

    iget-object v0, v0, Lcom/android/settings/datausage/DataSaverBackend$1;->this$0:Lcom/android/settings/datausage/DataSaverBackend;

    iget-object v2, v0, Lcom/android/settings/datausage/DataSaverBackend;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/net/NetworkPolicyManager;->getUidsWithPolicy(I)[I

    move-result-object v2

    array-length v4, v2

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_0

    aget v7, v2, v6

    iget-object v8, v0, Lcom/android/settings/datausage/DataSaverBackend;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v7, v3}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/android/settings/datausage/DataSaverBackend;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/net/NetworkPolicyManager;->getUidsWithPolicy(I)[I

    move-result-object v2

    array-length v6, v2

    move v7, v5

    :goto_1
    if-ge v7, v6, :cond_1

    aget v8, v2, v7

    iget-object v9, v0, Lcom/android/settings/datausage/DataSaverBackend;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v8, v4}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    iget-object v2, v0, Lcom/android/settings/datausage/DataSaverBackend;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    if-nez p0, :cond_2

    iget-object v6, v0, Lcom/android/settings/datausage/DataSaverBackend;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseIntArray;->delete(I)V

    goto :goto_2

    :cond_2
    iget-object v6, v0, Lcom/android/settings/datausage/DataSaverBackend;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v1, p0}, Landroid/util/SparseIntArray;->put(II)V

    :goto_2
    if-ne v2, v3, :cond_3

    move v6, v4

    goto :goto_3

    :cond_3
    move v6, v5

    :goto_3
    if-ne v2, v4, :cond_4

    move v2, v4

    goto :goto_4

    :cond_4
    move v2, v5

    :goto_4
    if-ne p0, v3, :cond_5

    move v3, v4

    goto :goto_5

    :cond_5
    move v3, v5

    :goto_5
    if-ne p0, v4, :cond_6

    goto :goto_6

    :cond_6
    move v4, v5

    :goto_6
    if-eq v6, v3, :cond_7

    move p0, v5

    :goto_7
    iget-object v6, v0, Lcom/android/settings/datausage/DataSaverBackend;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge p0, v6, :cond_7

    iget-object v6, v0, Lcom/android/settings/datausage/DataSaverBackend;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/datausage/DataSaverBackend$Listener;

    invoke-interface {v6, v1, v3}, Lcom/android/settings/datausage/DataSaverBackend$Listener;->onAllowlistStatusChanged(IZ)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_7

    :cond_7
    if-eq v2, v4, :cond_8

    :goto_8
    iget-object p0, v0, Lcom/android/settings/datausage/DataSaverBackend;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-ge v5, p0, :cond_8

    iget-object p0, v0, Lcom/android/settings/datausage/DataSaverBackend;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/datausage/DataSaverBackend$Listener;

    invoke-interface {p0, v1, v4}, Lcom/android/settings/datausage/DataSaverBackend$Listener;->onDenylistStatusChanged(IZ)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_8
    return-void
.end method
