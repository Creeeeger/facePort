.class public final Lcom/samsung/android/sdk/moneta/preference/entity/option/MostContactRequestOption;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sdk/moneta/preference/entity/option/MostContactRequestOption;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final contactChannel:Lcom/samsung/android/sdk/moneta/preference/entity/ContactChannel;

.field private final myPhoneNumber:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/moneta/preference/entity/option/MostContactRequestOption$Creator;

    invoke-direct {v0}, Lcom/samsung/android/sdk/moneta/preference/entity/option/MostContactRequestOption$Creator;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/moneta/preference/entity/option/MostContactRequestOption;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/sdk/moneta/preference/entity/ContactChannel;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/moneta/preference/entity/option/MostContactRequestOption;->contactChannel:Lcom/samsung/android/sdk/moneta/preference/entity/ContactChannel;

    iput-object p2, p0, Lcom/samsung/android/sdk/moneta/preference/entity/option/MostContactRequestOption;->myPhoneNumber:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/sdk/moneta/preference/entity/ContactChannel;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/moneta/preference/entity/option/MostContactRequestOption;-><init>(Lcom/samsung/android/sdk/moneta/preference/entity/ContactChannel;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/sdk/moneta/preference/entity/ContactChannel;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/moneta/preference/entity/option/MostContactRequestOption;-><init>(Lcom/samsung/android/sdk/moneta/preference/entity/ContactChannel;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getContactChannel()Lcom/samsung/android/sdk/moneta/preference/entity/ContactChannel;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/moneta/preference/entity/option/MostContactRequestOption;->contactChannel:Lcom/samsung/android/sdk/moneta/preference/entity/ContactChannel;

    return-object p0
.end method

.method public final getMyPhoneNumber()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/moneta/preference/entity/option/MostContactRequestOption;->myPhoneNumber:Ljava/lang/String;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object p2, p0, Lcom/samsung/android/sdk/moneta/preference/entity/option/MostContactRequestOption;->contactChannel:Lcom/samsung/android/sdk/moneta/preference/entity/ContactChannel;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/sdk/moneta/preference/entity/option/MostContactRequestOption;->myPhoneNumber:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
