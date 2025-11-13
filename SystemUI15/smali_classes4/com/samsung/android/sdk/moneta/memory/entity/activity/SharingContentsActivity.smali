.class public final Lcom/samsung/android/sdk/moneta/memory/entity/activity/SharingContentsActivity;
.super Lcom/samsung/android/sdk/moneta/memory/entity/activity/Activity;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sdk/moneta/memory/entity/activity/SharingContentsActivity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final contents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/moneta/memory/entity/content/Content;",
            ">;"
        }
    .end annotation
.end field

.field private final id:Ljava/lang/String;

.field private final recipientName:Ljava/lang/String;

.field private final sharedFromApp:Lcom/samsung/android/sdk/moneta/memory/entity/content/MobileApplication;

.field private final sharedPerson:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/moneta/memory/entity/context/Person;",
            ">;"
        }
    .end annotation
.end field

.field private final sharedTime:J

.field private final sharedToApp:Lcom/samsung/android/sdk/moneta/memory/entity/content/MobileApplication;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/moneta/memory/entity/activity/SharingContentsActivity$Creator;

    invoke-direct {v0}, Lcom/samsung/android/sdk/moneta/memory/entity/activity/SharingContentsActivity$Creator;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/moneta/memory/entity/activity/SharingContentsActivity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;Lcom/samsung/android/sdk/moneta/memory/entity/content/MobileApplication;Lcom/samsung/android/sdk/moneta/memory/entity/content/MobileApplication;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/samsung/android/sdk/moneta/memory/entity/content/Content;",
            ">;J",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/moneta/memory/entity/content/MobileApplication;",
            "Lcom/samsung/android/sdk/moneta/memory/entity/content/MobileApplication;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/moneta/memory/entity/context/Person;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;->SharingContents:Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/moneta/memory/entity/activity/Activity;-><init>(Lcom/samsung/android/sdk/moneta/memory/entity/activity/ActivityType;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/moneta/memory/entity/activity/SharingContentsActivity;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/moneta/memory/entity/activity/SharingContentsActivity;->contents:Ljava/util/List;

    iput-wide p3, p0, Lcom/samsung/android/sdk/moneta/memory/entity/activity/SharingContentsActivity;->sharedTime:J

    iput-object p5, p0, Lcom/samsung/android/sdk/moneta/memory/entity/activity/SharingContentsActivity;->recipientName:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/android/sdk/moneta/memory/entity/activity/SharingContentsActivity;->sharedToApp:Lcom/samsung/android/sdk/moneta/memory/entity/content/MobileApplication;

    iput-object p7, p0, Lcom/samsung/android/sdk/moneta/memory/entity/activity/SharingContentsActivity;->sharedFromApp:Lcom/samsung/android/sdk/moneta/memory/entity/content/MobileApplication;

    iput-object p8, p0, Lcom/samsung/android/sdk/moneta/memory/entity/activity/SharingContentsActivity;->sharedPerson:Ljava/util/List;

    return-void
.end method

.method public static synthetic copy$default(Lcom/samsung/android/sdk/moneta/memory/entity/activity/SharingContentsActivity;Ljava/lang/String;Ljava/util/List;JLjava/lang/String;Lcom/samsung/android/sdk/moneta/memory/entity/content/MobileApplication;Lcom/samsung/android/sdk/moneta/memory/entity/content/MobileApplication;Ljava/util/List;ILjava/lang/Object;)Lcom/samsung/android/sdk/moneta/memory/entity/activity/SharingContentsActivity;
    .locals 9

    move-object v0, p0

    and-int/lit8 v1, p9, 0x1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/samsung/android/sdk/moneta/memory/entity/activity/SharingContentsActivity;->id:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    and-int/lit8 v2, p9, 0x2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/samsung/android/sdk/moneta/memory/entity/activity/SharingContentsActivity;->contents:Ljava/util/List;

    goto :goto_1

    :cond_1
    move-object v2, p2

    :goto_1
    and-int/lit8 v3, p9, 0x4

    if-eqz v3, :cond_2

    iget-wide v3, v0, Lcom/samsung/android/sdk/moneta/memory/entity/activity/SharingContentsActivity;->sharedTime:J

    goto :goto_2

    :cond_2
    move-wide v3, p3

    :goto_2
    and-int/lit8 v5, p9, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/samsung/android/sdk/moneta/memory/entity/activity/SharingContentsActivity;->recipientName:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object v5, p5

    :goto_3
    and-int/lit8 v6, p9, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/samsung/android/sdk/moneta/memory/entity/activity/SharingContentsActivity;->sharedToApp:Lcom/samsung/android/sdk/moneta/memory/entity/content/MobileApplication;

    goto :goto_4

    :cond_4
    move-object v6, p6

    :goto_4
    and-int/lit8 v7, p9, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/samsung/android/sdk/moneta/memory/entity/activity/SharingContentsActivity;->sharedFromApp:Lcom/samsung/android/sdk/moneta/memory/entity/content/MobileApplication;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p7

    :goto_5
    and-int/lit8 v8, p9, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/samsung/android/sdk/moneta/memory/entity/activity/SharingContentsActivity;->sharedPerson:Ljava/util/List;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p8

    :goto_6
    move-object p1, v1

    move-object p2, v2

    move-wide p3, v3

    move-object p5, v5

    move-object p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    invoke-virtual/range {p0 .. p8}, Lcom/samsung/android/sdk/moneta/memory/entity/activity/SharingContentsActivity;->copy(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;Lcom/samsung/android/sdk/moneta/memory/entity/content/MobileApplication;Lcom/samsung/android/sdk/moneta/memory/entity/content/MobileApplication;Ljava/util/List;)Lcom/samsung/android/sdk/moneta/memory/entity/activity/SharingContentsActivity;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/moneta/memory/entity/activity/SharingContentsActivity;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/moneta/memory/entity/content/Content;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/moneta/memory/entity/activity/SharingContentsActivity;->contents:Ljava/util/List;

    return-object p0
.end method

.method public final component3()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/moneta/memory/entity/activity/SharingContentsActivity;->sharedTime:J

    return-wide v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/moneta/memory/entity/activity/SharingContentsActivity;->recipientName:Ljava/lang/String;

    return-object p0
.end method

.method public final component5()Lcom/samsung/android/sdk/moneta/memory/entity/content/MobileApplication;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/moneta/memory/entity/activity/SharingContentsActivity;->sharedToApp:Lcom/samsung/android/sdk/moneta/memory/entity/content/MobileApplication;

    return-object p0
.end method

.method public final component6()Lcom/samsung/android/sdk/moneta/memory/entity/content/MobileApplication;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/moneta/memory/entity/activity/SharingContentsActivity;->sharedFromApp:Lcom/samsung/android/sdk/moneta/memory/entity/content/MobileApplication;

    return-object p0
.end method

.method public final component7()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/moneta/memory/entity/context/Person;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/moneta/memory/entity/activity/SharingContentsActivity;->sharedPerson:Ljava/util/List;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;Lcom/samsung/android/sdk/moneta/memory/entity/content/MobileApplication;Lcom/samsung/android/sdk/moneta/memory/entity/content/MobileApplication;Ljava/util/List;)Lcom/samsung/android/sdk/moneta/memory/entity/activity/SharingContentsActivity;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/samsung/android/sdk/moneta/memory/entity/content/Content;",
            ">;J",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/moneta/memory/entity/content/MobileApplication;",
            "Lcom/samsung/android/sdk/moneta/memory/entity/content/MobileApplication;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/moneta/memory/entity/context/Person;",
            ">;)",
            "Lcom/samsung/android/sdk/moneta/memory/entity/activity/SharingContentsActivity;"
        }
    .end annotation

    new-instance v9, Lcom/samsung/android/sdk/moneta/memory/entity/activity/SharingContentsActivity;

    move-object v0, v9

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/sdk/moneta/memory/entity/activity/SharingContentsActivity;-><init>(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;Lcom/samsung/android/sdk/moneta/memory/entity/content/MobileApplication;Lcom/samsung/android/sdk/moneta/memory/entity/content/MobileApplication;Ljava/util/List;)V

    return-object v9
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/samsung/android/sdk/moneta/memory/entity/activity/SharingContentsActivity;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/samsung/android/sdk/moneta/memory/entity/activity/SharingContentsActivity;

    iget-object v1, p0, Lcom/samsung/android/sdk/moneta/memory/entity/activity/SharingContentsActivity;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/sdk/moneta/memory/entity/activity/SharingContentsActivity;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/sdk/moneta/memory/entity/activity/SharingContentsActivity;->contents:Ljava/util/List;

    iget-object v3, p1, Lcom/samsung/android/sdk/moneta/memory/entity/activity/SharingContentsActivity;->contents:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/samsung/android/sdk/moneta/memory/entity/activity/SharingContentsActivity;->sharedTime:J

    iget-wide v5, p1, Lcom/samsung/android/sdk/moneta/memory/entity/activity/SharingContentsActivity;->sharedTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/sdk/moneta/memory/entity/activity/SharingContentsActivity;->recipientName:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/android/sdk/moneta/memory/entity/activity/SharingContentsActivity;->recipientName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/sdk/moneta/memory/entity/activity/SharingContentsActivity;->sharedToApp:Lcom/samsung/android/sdk/moneta/memory/entity/content/MobileApplication;

    iget-object v3, p1, Lcom/samsung/android/sdk/moneta/memory/entity/activity/SharingContentsActivity;->sharedToApp:Lcom/samsung/android/sdk/moneta/memory/entity/content/MobileApplication;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/sdk/moneta/memory/entity/activity/SharingContentsActivity;->sharedFromApp:Lcom/samsung/android/sdk/moneta/memory/entity/content/MobileApplication;

    iget-object v3, p1, Lcom/samsung/android/sdk/moneta/memory/entity/activity/SharingContentsActivity;->sharedFromApp:Lcom/samsung/android/sdk/moneta/memory/entity/content/MobileApplication;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object p0, p0, Lcom/samsung/android/sdk/moneta/memory/entity/activity/SharingContentsActivity;->sharedPerson:Ljava/util/List;

    iget-object p1, p1, Lcom/samsung/android/sdk/moneta/memory/entity/activity/SharingContentsActivity;->sharedPerson:Ljava/util/List;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public getContents()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/moneta/memory/entity/content/Content;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/moneta/memory/entity/activity/SharingContentsActivity;->contents:Ljava/util/List;

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/moneta/memory/entity/activity/SharingContentsActivity;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final getRecipientName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/moneta/memory/entity/activity/SharingContentsActivity;->recipientName:Ljava/lang/String;

    return-object p0
.end method

.method public final getSharedFromApp()Lcom/samsung/android/sdk/moneta/memory/entity/content/MobileApplication;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/moneta/memory/entity/activity/SharingContentsActivity;->sharedFromApp:Lcom/samsung/android/sdk/moneta/memory/entity/content/MobileApplication;

    return-object p0
.end method

.method public final getSharedPerson()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/moneta/memory/entity/context/Person;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/moneta/memory/entity/activity/SharingContentsActivity;->sharedPerson:Ljava/util/List;

    return-object p0
.end method

.method public final getSharedTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/moneta/memory/entity/activity/SharingContentsActivity;->sharedTime:J

    return-wide v0
.end method

.method public final getSharedToApp()Lcom/samsung/android/sdk/moneta/memory/entity/content/MobileApplication;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/moneta/memory/entity/activity/SharingContentsActivity;->sharedToApp:Lcom/samsung/android/sdk/moneta/memory/entity/content/MobileApplication;

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sdk/moneta/memory/entity/activity/SharingContentsActivity;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/samsung/android/sdk/moneta/memory/entity/activity/SharingContentsActivity;->contents:Ljava/util/List;

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/graphics/vector/PropertyValuesHolder2D$$ExternalSyntheticOutline0;->m(Ljava/util/List;II)I

    move-result v0

    iget-wide v2, p0, Lcom/samsung/android/sdk/moneta/memory/entity/activity/SharingContentsActivity;->sharedTime:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/Scale$$ExternalSyntheticOutline0;->m(IIJ)I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/sdk/moneta/memory/entity/activity/SharingContentsActivity;->recipientName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/graphics/vector/PropertyValuesHolder2D$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/sdk/moneta/memory/entity/activity/SharingContentsActivity;->sharedToApp:Lcom/samsung/android/sdk/moneta/memory/entity/content/MobileApplication;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/moneta/memory/entity/content/MobileApplication;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/samsung/android/sdk/moneta/memory/entity/activity/SharingContentsActivity;->sharedFromApp:Lcom/samsung/android/sdk/moneta/memory/entity/content/MobileApplication;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/moneta/memory/entity/content/MobileApplication;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object p0, p0, Lcom/samsung/android/sdk/moneta/memory/entity/activity/SharingContentsActivity;->sharedPerson:Ljava/util/List;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SharingContentsActivity(id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/moneta/memory/entity/activity/SharingContentsActivity;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", contents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/sdk/moneta/memory/entity/activity/SharingContentsActivity;->contents:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sharedTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/sdk/moneta/memory/entity/activity/SharingContentsActivity;->sharedTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", recipientName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/sdk/moneta/memory/entity/activity/SharingContentsActivity;->recipientName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sharedToApp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/sdk/moneta/memory/entity/activity/SharingContentsActivity;->sharedToApp:Lcom/samsung/android/sdk/moneta/memory/entity/content/MobileApplication;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sharedFromApp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/sdk/moneta/memory/entity/activity/SharingContentsActivity;->sharedFromApp:Lcom/samsung/android/sdk/moneta/memory/entity/content/MobileApplication;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sharedPerson="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/sdk/moneta/memory/entity/activity/SharingContentsActivity;->sharedPerson:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/moneta/memory/entity/activity/SharingContentsActivity;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/moneta/memory/entity/activity/SharingContentsActivity;->contents:Ljava/util/List;

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
    iget-wide v0, p0, Lcom/samsung/android/sdk/moneta/memory/entity/activity/SharingContentsActivity;->sharedTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/samsung/android/sdk/moneta/memory/entity/activity/SharingContentsActivity;->recipientName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/moneta/memory/entity/activity/SharingContentsActivity;->sharedToApp:Lcom/samsung/android/sdk/moneta/memory/entity/content/MobileApplication;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/moneta/memory/entity/content/MobileApplication;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/moneta/memory/entity/activity/SharingContentsActivity;->sharedFromApp:Lcom/samsung/android/sdk/moneta/memory/entity/content/MobileApplication;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/moneta/memory/entity/content/MobileApplication;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p0, p0, Lcom/samsung/android/sdk/moneta/memory/entity/activity/SharingContentsActivity;->sharedPerson:Ljava/util/List;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/moneta/memory/entity/context/Person;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/moneta/memory/entity/context/Person;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method
