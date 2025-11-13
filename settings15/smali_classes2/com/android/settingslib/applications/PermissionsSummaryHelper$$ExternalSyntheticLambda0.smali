.class public final synthetic Lcom/android/settingslib/applications/PermissionsSummaryHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/permission/PermissionControllerManager$OnGetAppPermissionResultCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/settingslib/applications/PermissionsSummaryHelper$PermissionsResultCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settingslib/applications/PermissionsSummaryHelper$PermissionsResultCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/applications/PermissionsSummaryHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/settingslib/applications/PermissionsSummaryHelper$PermissionsResultCallback;

    return-void
.end method


# virtual methods
.method public final onGetAppPermissions(Ljava/util/List;)V
    .locals 6

    iget-object p0, p0, Lcom/android/settingslib/applications/PermissionsSummaryHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/settingslib/applications/PermissionsSummaryHelper$PermissionsResultCallback;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/permission/RuntimePermissionPresentationInfo;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v4}, Landroid/permission/RuntimePermissionPresentationInfo;->isGranted()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Landroid/permission/RuntimePermissionPresentationInfo;->isStandard()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Landroid/permission/RuntimePermissionPresentationInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/text/Collator;->setStrength(I)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    invoke-interface {p0, v2, v0, v3}, Lcom/android/settingslib/applications/PermissionsSummaryHelper$PermissionsResultCallback;->onPermissionSummaryResult(ILjava/util/List;I)V

    return-void
.end method
