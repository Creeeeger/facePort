.class public final synthetic Lcom/android/settings/deviceinfo/storage/StorageUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/deviceinfo/storage/StorageUtils$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget p0, p0, Lcom/android/settings/deviceinfo/storage/StorageUtils$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Landroid/os/storage/DiskInfo;

    invoke-static {p1}, Lcom/android/settings/deviceinfo/storage/StorageUtils;->isDiskUnsupported(Landroid/os/storage/DiskInfo;)Z

    move-result p0

    return p0

    :pswitch_0
    check-cast p1, Landroid/os/storage/VolumeInfo;

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result p0

    const/4 p1, 0x1

    if-eqz p0, :cond_0

    if-eq p0, p1, :cond_0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
