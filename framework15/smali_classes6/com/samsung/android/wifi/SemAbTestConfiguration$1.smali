.class Lcom/samsung/android/wifi/SemAbTestConfiguration$1;
.super Ljava/lang/Object;
.source "SemAbTestConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wifi/SemAbTestConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/wifi/SemAbTestConfiguration;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/wifi/SemAbTestConfiguration;
    .locals 3

    new-instance v0, Lcom/samsung/android/wifi/SemAbTestConfiguration;

    invoke-direct {v0}, Lcom/samsung/android/wifi/SemAbTestConfiguration;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/wifi/SemAbTestConfiguration;->id:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/wifi/SemAbTestConfiguration;->moduleName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/wifi/SemAbTestConfiguration;->startDate:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/wifi/SemAbTestConfiguration;->endDate:Ljava/lang/String;

    const-class v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/wifi/SemAbTestConfiguration;->-$$Nest$fputmSalesModelAllowList(Lcom/samsung/android/wifi/SemAbTestConfiguration;Ljava/util/List;)V

    const-class v1, Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/wifi/SemAbTestConfiguration;->-$$Nest$fputmSalesModelBlockList(Lcom/samsung/android/wifi/SemAbTestConfiguration;Ljava/util/List;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/wifi/SemAbTestConfiguration;->abTestGroupAllocation:I

    const-class v1, Lcom/samsung/android/wifi/SemAbTestConfiguration$TestParam;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/wifi/SemAbTestConfiguration;->-$$Nest$fputmTestParamList(Lcom/samsung/android/wifi/SemAbTestConfiguration;Ljava/util/List;)V

    invoke-static {p1}, Lcom/samsung/android/wifi/SemAbTestConfiguration;->-$$Nest$smreadGroup(Landroid/os/Parcel;)Lcom/samsung/android/wifi/SemAbTestConfiguration$Group;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/wifi/SemAbTestConfiguration;->-$$Nest$fputmGroupSize(Lcom/samsung/android/wifi/SemAbTestConfiguration;Lcom/samsung/android/wifi/SemAbTestConfiguration$Group;)V

    const-class v1, Lcom/samsung/android/wifi/SemAbTestConfiguration$TestOutput;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/wifi/SemAbTestConfiguration;->-$$Nest$fputmTestOutputList(Lcom/samsung/android/wifi/SemAbTestConfiguration;Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/samsung/android/wifi/SemAbTestConfiguration$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/wifi/SemAbTestConfiguration;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Lcom/samsung/android/wifi/SemAbTestConfiguration;
    .locals 1

    new-array v0, p1, [Lcom/samsung/android/wifi/SemAbTestConfiguration;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/samsung/android/wifi/SemAbTestConfiguration$1;->newArray(I)[Lcom/samsung/android/wifi/SemAbTestConfiguration;

    move-result-object p1

    return-object p1
.end method
