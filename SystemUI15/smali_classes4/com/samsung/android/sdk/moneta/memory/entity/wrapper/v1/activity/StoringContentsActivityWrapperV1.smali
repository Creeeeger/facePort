.class public final Lcom/samsung/android/sdk/moneta/memory/entity/wrapper/v1/activity/StoringContentsActivityWrapperV1;
.super Lcom/samsung/android/sdk/moneta/memory/entity/wrapper/ActivityWrapper;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sdk/moneta/memory/entity/wrapper/v1/activity/StoringContentsActivityWrapperV1;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/samsung/android/sdk/moneta/memory/entity/wrapper/v1/activity/StoringContentsActivityWrapperV1$Companion;


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

.field private final receivedFromApp:Lcom/samsung/android/sdk/moneta/memory/entity/content/MobileApplication;

.field private final receivedFromContact:Lcom/samsung/android/sdk/moneta/memory/entity/context/Person;

.field private final storedTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/moneta/memory/entity/wrapper/v1/activity/StoringContentsActivityWrapperV1$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/moneta/memory/entity/wrapper/v1/activity/StoringContentsActivityWrapperV1$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/sdk/moneta/memory/entity/wrapper/v1/activity/StoringContentsActivityWrapperV1;->Companion:Lcom/samsung/android/sdk/moneta/memory/entity/wrapper/v1/activity/StoringContentsActivityWrapperV1$Companion;

    new-instance v0, Lcom/samsung/android/sdk/moneta/memory/entity/wrapper/v1/activity/StoringContentsActivityWrapperV1$Creator;

    invoke-direct {v0}, Lcom/samsung/android/sdk/moneta/memory/entity/wrapper/v1/activity/StoringContentsActivityWrapperV1$Creator;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/moneta/memory/entity/wrapper/v1/activity/StoringContentsActivityWrapperV1;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;JLcom/samsung/android/sdk/moneta/memory/entity/content/MobileApplication;Lcom/samsung/android/sdk/moneta/memory/entity/context/Person;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/samsung/android/sdk/moneta/memory/entity/content/Content;",
            ">;J",
            "Lcom/samsung/android/sdk/moneta/memory/entity/content/MobileApplication;",
            "Lcom/samsung/android/sdk/moneta/memory/entity/context/Person;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/sdk/moneta/memory/entity/wrapper/ActivityWrapper;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/moneta/memory/entity/wrapper/v1/activity/StoringContentsActivityWrapperV1;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/moneta/memory/entity/wrapper/v1/activity/StoringContentsActivityWrapperV1;->contents:Ljava/util/List;

    iput-wide p3, p0, Lcom/samsung/android/sdk/moneta/memory/entity/wrapper/v1/activity/StoringContentsActivityWrapperV1;->storedTime:J

    iput-object p5, p0, Lcom/samsung/android/sdk/moneta/memory/entity/wrapper/v1/activity/StoringContentsActivityWrapperV1;->receivedFromApp:Lcom/samsung/android/sdk/moneta/memory/entity/content/MobileApplication;

    iput-object p6, p0, Lcom/samsung/android/sdk/moneta/memory/entity/wrapper/v1/activity/StoringContentsActivityWrapperV1;->receivedFromContact:Lcom/samsung/android/sdk/moneta/memory/entity/context/Person;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
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

    iget-object p0, p0, Lcom/samsung/android/sdk/moneta/memory/entity/wrapper/v1/activity/StoringContentsActivityWrapperV1;->contents:Ljava/util/List;

    return-object p0
.end method

.method public final getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/moneta/memory/entity/wrapper/v1/activity/StoringContentsActivityWrapperV1;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final getReceivedFromApp()Lcom/samsung/android/sdk/moneta/memory/entity/content/MobileApplication;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/moneta/memory/entity/wrapper/v1/activity/StoringContentsActivityWrapperV1;->receivedFromApp:Lcom/samsung/android/sdk/moneta/memory/entity/content/MobileApplication;

    return-object p0
.end method

.method public final getReceivedFromContact()Lcom/samsung/android/sdk/moneta/memory/entity/context/Person;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/moneta/memory/entity/wrapper/v1/activity/StoringContentsActivityWrapperV1;->receivedFromContact:Lcom/samsung/android/sdk/moneta/memory/entity/context/Person;

    return-object p0
.end method

.method public final getStoredTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/moneta/memory/entity/wrapper/v1/activity/StoringContentsActivityWrapperV1;->storedTime:J

    return-wide v0
.end method

.method public bridge synthetic toActivity()Lcom/samsung/android/sdk/moneta/memory/entity/activity/Activity;
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/moneta/memory/entity/wrapper/v1/activity/StoringContentsActivityWrapperV1;->toActivity()Lcom/samsung/android/sdk/moneta/memory/entity/activity/StoringContentsActivity;

    move-result-object p0

    return-object p0
.end method

.method public toActivity()Lcom/samsung/android/sdk/moneta/memory/entity/activity/StoringContentsActivity;
    .locals 8

    new-instance v7, Lcom/samsung/android/sdk/moneta/memory/entity/activity/StoringContentsActivity;

    iget-object v1, p0, Lcom/samsung/android/sdk/moneta/memory/entity/wrapper/v1/activity/StoringContentsActivityWrapperV1;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/sdk/moneta/memory/entity/wrapper/v1/activity/StoringContentsActivityWrapperV1;->contents:Ljava/util/List;

    iget-wide v3, p0, Lcom/samsung/android/sdk/moneta/memory/entity/wrapper/v1/activity/StoringContentsActivityWrapperV1;->storedTime:J

    iget-object v5, p0, Lcom/samsung/android/sdk/moneta/memory/entity/wrapper/v1/activity/StoringContentsActivityWrapperV1;->receivedFromApp:Lcom/samsung/android/sdk/moneta/memory/entity/content/MobileApplication;

    iget-object v6, p0, Lcom/samsung/android/sdk/moneta/memory/entity/wrapper/v1/activity/StoringContentsActivityWrapperV1;->receivedFromContact:Lcom/samsung/android/sdk/moneta/memory/entity/context/Person;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/sdk/moneta/memory/entity/activity/StoringContentsActivity;-><init>(Ljava/lang/String;Ljava/util/List;JLcom/samsung/android/sdk/moneta/memory/entity/content/MobileApplication;Lcom/samsung/android/sdk/moneta/memory/entity/context/Person;)V

    return-object v7
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/moneta/memory/entity/wrapper/v1/activity/StoringContentsActivityWrapperV1;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/moneta/memory/entity/wrapper/v1/activity/StoringContentsActivityWrapperV1;->contents:Ljava/util/List;

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
    iget-wide v0, p0, Lcom/samsung/android/sdk/moneta/memory/entity/wrapper/v1/activity/StoringContentsActivityWrapperV1;->storedTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/samsung/android/sdk/moneta/memory/entity/wrapper/v1/activity/StoringContentsActivityWrapperV1;->receivedFromApp:Lcom/samsung/android/sdk/moneta/memory/entity/content/MobileApplication;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/moneta/memory/entity/content/MobileApplication;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p0, p0, Lcom/samsung/android/sdk/moneta/memory/entity/wrapper/v1/activity/StoringContentsActivityWrapperV1;->receivedFromContact:Lcom/samsung/android/sdk/moneta/memory/entity/context/Person;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/moneta/memory/entity/context/Person;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1
    return-void
.end method
