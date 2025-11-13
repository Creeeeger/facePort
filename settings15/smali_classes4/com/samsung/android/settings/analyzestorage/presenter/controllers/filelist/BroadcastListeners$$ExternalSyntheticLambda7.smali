.class public final synthetic Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners$$ExternalSyntheticLambda7;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners$$ExternalSyntheticLambda7;->$r8$classId:I

    check-cast p1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/DataListControllerInterface;

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x1

    invoke-interface {p1, p0}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/DataListControllerInterface;->refresh$1(Z)V

    return-void

    :pswitch_0
    const/4 p0, 0x1

    invoke-interface {p1, p0}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/DataListControllerInterface;->refresh$1(Z)V

    return-void

    :pswitch_1
    const/4 p0, 0x1

    invoke-interface {p1, p0}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/PageControllerInterface;->refresh(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
