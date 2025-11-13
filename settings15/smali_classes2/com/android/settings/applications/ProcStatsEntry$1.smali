.class public final Lcom/android/settings/applications/ProcStatsEntry$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/applications/ProcStatsEntry$1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lcom/android/settings/applications/ProcStatsEntry$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Lcom/android/settings/applications/ProcStatsEntry$Service;

    invoke-direct {p0, p1}, Lcom/android/settings/applications/ProcStatsEntry$Service;-><init>(Landroid/os/Parcel;)V

    return-object p0

    :pswitch_0
    new-instance p0, Lcom/android/settings/applications/ProcStatsEntry;

    invoke-direct {p0, p1}, Lcom/android/settings/applications/ProcStatsEntry;-><init>(Landroid/os/Parcel;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lcom/android/settings/applications/ProcStatsEntry$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    new-array p0, p1, [Lcom/android/settings/applications/ProcStatsEntry$Service;

    return-object p0

    :pswitch_0
    new-array p0, p1, [Lcom/android/settings/applications/ProcStatsEntry;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
