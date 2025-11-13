.class public final Lcom/samsung/android/sdk/moneta/memory/entity/wrapper/v1/activity/ExercisingActivityWrapperV1;
.super Lcom/samsung/android/sdk/moneta/memory/entity/wrapper/ActivityWrapper;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sdk/moneta/memory/entity/wrapper/v1/activity/ExercisingActivityWrapperV1;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/samsung/android/sdk/moneta/memory/entity/wrapper/v1/activity/ExercisingActivityWrapperV1$Companion;


# instance fields
.field private final calorie:Ljava/lang/Float;

.field private final contents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/moneta/memory/entity/content/Content;",
            ">;"
        }
    .end annotation
.end field

.field private final endTimestamp:Ljava/lang/Long;

.field private final exerciseType:Ljava/lang/String;

.field private final id:Ljava/lang/String;

.field private final location:Lcom/samsung/android/sdk/moneta/memory/entity/context/Place;

.field private final maxHeartRate:Ljava/lang/Float;

.field private final meanHeartRate:Ljava/lang/Float;

.field private final minHeartRate:Ljava/lang/Float;

.field private final name:Ljava/lang/String;

.field private final startTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/moneta/memory/entity/wrapper/v1/activity/ExercisingActivityWrapperV1$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/moneta/memory/entity/wrapper/v1/activity/ExercisingActivityWrapperV1$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/sdk/moneta/memory/entity/wrapper/v1/activity/ExercisingActivityWrapperV1;->Companion:Lcom/samsung/android/sdk/moneta/memory/entity/wrapper/v1/activity/ExercisingActivityWrapperV1$Companion;

    new-instance v0, Lcom/samsung/android/sdk/moneta/memory/entity/wrapper/v1/activity/ExercisingActivityWrapperV1$Creator;

    invoke-direct {v0}, Lcom/samsung/android/sdk/moneta/memory/entity/wrapper/v1/activity/ExercisingActivityWrapperV1$Creator;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/moneta/memory/entity/wrapper/v1/activity/ExercisingActivityWrapperV1;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/samsung/android/sdk/moneta/memory/entity/context/Place;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;JLjava/lang/Long;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/samsung/android/sdk/moneta/memory/entity/content/Content;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/moneta/memory/entity/context/Place;",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            "J",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/sdk/moneta/memory/entity/wrapper/ActivityWrapper;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/moneta/memory/entity/wrapper/v1/activity/ExercisingActivityWrapperV1;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/moneta/memory/entity/wrapper/v1/activity/ExercisingActivityWrapperV1;->contents:Ljava/util/List;

    iput-object p3, p0, Lcom/samsung/android/sdk/moneta/memory/entity/wrapper/v1/activity/ExercisingActivityWrapperV1;->name:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/sdk/moneta/memory/entity/wrapper/v1/activity/ExercisingActivityWrapperV1;->location:Lcom/samsung/android/sdk/moneta/memory/entity/context/Place;

    iput-object p5, p0, Lcom/samsung/android/sdk/moneta/memory/entity/wrapper/v1/activity/ExercisingActivityWrapperV1;->calorie:Ljava/lang/Float;

    iput-object p6, p0, Lcom/samsung/android/sdk/moneta/memory/entity/wrapper/v1/activity/ExercisingActivityWrapperV1;->maxHeartRate:Ljava/lang/Float;

    iput-object p7, p0, Lcom/samsung/android/sdk/moneta/memory/entity/wrapper/v1/activity/ExercisingActivityWrapperV1;->meanHeartRate:Ljava/lang/Float;

    iput-object p8, p0, Lcom/samsung/android/sdk/moneta/memory/entity/wrapper/v1/activity/ExercisingActivityWrapperV1;->minHeartRate:Ljava/lang/Float;

    iput-wide p9, p0, Lcom/samsung/android/sdk/moneta/memory/entity/wrapper/v1/activity/ExercisingActivityWrapperV1;->startTimestamp:J

    iput-object p11, p0, Lcom/samsung/android/sdk/moneta/memory/entity/wrapper/v1/activity/ExercisingActivityWrapperV1;->endTimestamp:Ljava/lang/Long;

    iput-object p12, p0, Lcom/samsung/android/sdk/moneta/memory/entity/wrapper/v1/activity/ExercisingActivityWrapperV1;->exerciseType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getCalorie()Ljava/lang/Float;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/moneta/memory/entity/wrapper/v1/activity/ExercisingActivityWrapperV1;->calorie:Ljava/lang/Float;

    return-object p0
.end method

.method public final getContents()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/moneta/memory/entity/content/Content;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/moneta/memory/entity/wrapper/v1/activity/ExercisingActivityWrapperV1;->contents:Ljava/util/List;

    return-object p0
.end method

.method public final getEndTimestamp()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/moneta/memory/entity/wrapper/v1/activity/ExercisingActivityWrapperV1;->endTimestamp:Ljava/lang/Long;

    return-object p0
.end method

.method public final getExerciseType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/moneta/memory/entity/wrapper/v1/activity/ExercisingActivityWrapperV1;->exerciseType:Ljava/lang/String;

    return-object p0
.end method

.method public final getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/moneta/memory/entity/wrapper/v1/activity/ExercisingActivityWrapperV1;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final getLocation()Lcom/samsung/android/sdk/moneta/memory/entity/context/Place;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/moneta/memory/entity/wrapper/v1/activity/ExercisingActivityWrapperV1;->location:Lcom/samsung/android/sdk/moneta/memory/entity/context/Place;

    return-object p0
.end method

.method public final getMaxHeartRate()Ljava/lang/Float;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/moneta/memory/entity/wrapper/v1/activity/ExercisingActivityWrapperV1;->maxHeartRate:Ljava/lang/Float;

    return-object p0
.end method

.method public final getMeanHeartRate()Ljava/lang/Float;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/moneta/memory/entity/wrapper/v1/activity/ExercisingActivityWrapperV1;->meanHeartRate:Ljava/lang/Float;

    return-object p0
.end method

.method public final getMinHeartRate()Ljava/lang/Float;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/moneta/memory/entity/wrapper/v1/activity/ExercisingActivityWrapperV1;->minHeartRate:Ljava/lang/Float;

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/moneta/memory/entity/wrapper/v1/activity/ExercisingActivityWrapperV1;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final getStartTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/moneta/memory/entity/wrapper/v1/activity/ExercisingActivityWrapperV1;->startTimestamp:J

    return-wide v0
.end method

.method public bridge synthetic toActivity()Lcom/samsung/android/sdk/moneta/memory/entity/activity/Activity;
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/moneta/memory/entity/wrapper/v1/activity/ExercisingActivityWrapperV1;->toActivity()Lcom/samsung/android/sdk/moneta/memory/entity/activity/ExercisingActivity;

    move-result-object p0

    return-object p0
.end method

.method public toActivity()Lcom/samsung/android/sdk/moneta/memory/entity/activity/ExercisingActivity;
    .locals 14

    new-instance v13, Lcom/samsung/android/sdk/moneta/memory/entity/activity/ExercisingActivity;

    iget-object v1, p0, Lcom/samsung/android/sdk/moneta/memory/entity/wrapper/v1/activity/ExercisingActivityWrapperV1;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/sdk/moneta/memory/entity/wrapper/v1/activity/ExercisingActivityWrapperV1;->contents:Ljava/util/List;

    iget-object v3, p0, Lcom/samsung/android/sdk/moneta/memory/entity/wrapper/v1/activity/ExercisingActivityWrapperV1;->name:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/sdk/moneta/memory/entity/wrapper/v1/activity/ExercisingActivityWrapperV1;->location:Lcom/samsung/android/sdk/moneta/memory/entity/context/Place;

    iget-object v5, p0, Lcom/samsung/android/sdk/moneta/memory/entity/wrapper/v1/activity/ExercisingActivityWrapperV1;->calorie:Ljava/lang/Float;

    iget-object v6, p0, Lcom/samsung/android/sdk/moneta/memory/entity/wrapper/v1/activity/ExercisingActivityWrapperV1;->maxHeartRate:Ljava/lang/Float;

    iget-object v7, p0, Lcom/samsung/android/sdk/moneta/memory/entity/wrapper/v1/activity/ExercisingActivityWrapperV1;->meanHeartRate:Ljava/lang/Float;

    iget-object v8, p0, Lcom/samsung/android/sdk/moneta/memory/entity/wrapper/v1/activity/ExercisingActivityWrapperV1;->minHeartRate:Ljava/lang/Float;

    iget-wide v9, p0, Lcom/samsung/android/sdk/moneta/memory/entity/wrapper/v1/activity/ExercisingActivityWrapperV1;->startTimestamp:J

    iget-object v11, p0, Lcom/samsung/android/sdk/moneta/memory/entity/wrapper/v1/activity/ExercisingActivityWrapperV1;->endTimestamp:Ljava/lang/Long;

    sget-object v0, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;->Companion:Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType$Companion;

    iget-object p0, p0, Lcom/samsung/android/sdk/moneta/memory/entity/wrapper/v1/activity/ExercisingActivityWrapperV1;->exerciseType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;->map:Ljava/util/Map;

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    if-nez p0, :cond_0

    sget-object p0, Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;->OTHER:Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;

    :cond_0
    move-object v12, p0

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Lcom/samsung/android/sdk/moneta/memory/entity/activity/ExercisingActivity;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/samsung/android/sdk/moneta/memory/entity/context/Place;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;JLjava/lang/Long;Lcom/samsung/android/sdk/moneta/memory/entity/content/ExerciseType;)V

    return-object v13
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/sdk/moneta/memory/entity/wrapper/v1/activity/ExercisingActivityWrapperV1;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/moneta/memory/entity/wrapper/v1/activity/ExercisingActivityWrapperV1;->contents:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType$$ExternalSyntheticOutline0;->m(Landroid/os/Parcel;Ljava/util/List;)Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/moneta/memory/entity/wrapper/v1/activity/ExercisingActivityWrapperV1;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/moneta/memory/entity/wrapper/v1/activity/ExercisingActivityWrapperV1;->location:Lcom/samsung/android/sdk/moneta/memory/entity/context/Place;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/moneta/memory/entity/context/Place;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1
    iget-object p2, p0, Lcom/samsung/android/sdk/moneta/memory/entity/wrapper/v1/activity/ExercisingActivityWrapperV1;->calorie:Ljava/lang/Float;

    if-nez p2, :cond_2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    :goto_2
    iget-object p2, p0, Lcom/samsung/android/sdk/moneta/memory/entity/wrapper/v1/activity/ExercisingActivityWrapperV1;->maxHeartRate:Ljava/lang/Float;

    if-nez p2, :cond_3

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    :cond_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    :goto_3
    iget-object p2, p0, Lcom/samsung/android/sdk/moneta/memory/entity/wrapper/v1/activity/ExercisingActivityWrapperV1;->meanHeartRate:Ljava/lang/Float;

    if-nez p2, :cond_4

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    :cond_4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    :goto_4
    iget-object p2, p0, Lcom/samsung/android/sdk/moneta/memory/entity/wrapper/v1/activity/ExercisingActivityWrapperV1;->minHeartRate:Ljava/lang/Float;

    if-nez p2, :cond_5

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    :cond_5
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    :goto_5
    iget-wide v3, p0, Lcom/samsung/android/sdk/moneta/memory/entity/wrapper/v1/activity/ExercisingActivityWrapperV1;->startTimestamp:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lcom/samsung/android/sdk/moneta/memory/entity/wrapper/v1/activity/ExercisingActivityWrapperV1;->endTimestamp:Ljava/lang/Long;

    if-nez p2, :cond_6

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    :cond_6
    invoke-static {p1, v1, p2}, Lcom/samsung/android/sdk/moneta/basicdomain/entity/Person$$ExternalSyntheticOutline0;->m(Landroid/os/Parcel;ILjava/lang/Long;)V

    :goto_6
    iget-object p0, p0, Lcom/samsung/android/sdk/moneta/memory/entity/wrapper/v1/activity/ExercisingActivityWrapperV1;->exerciseType:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
