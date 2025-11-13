.class public final synthetic Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController$$ExternalSyntheticLambda2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController$$ExternalSyntheticLambda2;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lcom/samsung/android/settings/analyzestorage/data/model/UnusedAppInfo;

    invoke-virtual {p1}, Lcom/samsung/android/settings/analyzestorage/data/model/UnusedAppInfo;->getLastLaunchTime()J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_0
    check-cast p1, Lcom/samsung/android/settings/analyzestorage/domain/entity/AppInfo;

    instance-of p0, p1, Lcom/samsung/android/settings/analyzestorage/data/model/UnusedAppInfo;

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
