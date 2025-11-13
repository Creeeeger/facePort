.class public final synthetic Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageOperationManager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageOperationManager$$ExternalSyntheticLambda3;->f$0:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageOperationManager$$ExternalSyntheticLambda3;->f$0:I

    check-cast p1, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/OverView;

    iget-object p1, p1, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/OverView;->adapter:Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;->updateMountVisibility(Z)V

    const p0, 0x7f140443

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0, v1, v0}, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;->updateMountState(Ljava/lang/Integer;ZZ)V

    goto :goto_0

    :cond_1
    const p0, 0x7f140417

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0, v1, v0}, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;->updateMountState(Ljava/lang/Integer;ZZ)V

    :cond_2
    :goto_0
    return-void
.end method
