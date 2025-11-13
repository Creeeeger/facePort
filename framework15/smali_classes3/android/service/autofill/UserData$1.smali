.class Landroid/service/autofill/UserData$1;
.super Ljava/lang/Object;
.source "UserData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/UserData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/service/autofill/UserData;",
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
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/UserData;
    .locals 13

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v4

    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    const-class v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    const-class v7, Landroid/os/Bundle;

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    new-instance v7, Landroid/service/autofill/UserData$Builder;

    const/4 v8, 0x0

    aget-object v9, v2, v8

    aget-object v8, v1, v8

    invoke-direct {v7, v0, v9, v8}, Landroid/service/autofill/UserData$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v3, v4}, Landroid/service/autofill/UserData$Builder;->setFieldClassificationAlgorithm(Ljava/lang/String;Landroid/os/Bundle;)Landroid/service/autofill/UserData$Builder;

    move-result-object v7

    const/4 v8, 0x1

    :goto_0
    array-length v9, v1

    if-ge v8, v9, :cond_0

    aget-object v9, v1, v8

    aget-object v10, v2, v8

    invoke-virtual {v7, v10, v9}, Landroid/service/autofill/UserData$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Landroid/service/autofill/UserData$Builder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v8

    if-lez v8, :cond_1

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_1

    invoke-virtual {v5, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    nop

    invoke-virtual {v5, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v6, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/Bundle;

    invoke-virtual {v7, v10, v11, v12}, Landroid/service/autofill/UserData$Builder;->setFieldClassificationAlgorithmForCategory(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/service/autofill/UserData$Builder;

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v7}, Landroid/service/autofill/UserData$Builder;->build()Landroid/service/autofill/UserData;

    move-result-object v9

    return-object v9
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

    invoke-virtual {p0, p1}, Landroid/service/autofill/UserData$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/UserData;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/service/autofill/UserData;
    .locals 1

    new-array v0, p1, [Landroid/service/autofill/UserData;

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

    invoke-virtual {p0, p1}, Landroid/service/autofill/UserData$1;->newArray(I)[Landroid/service/autofill/UserData;

    move-result-object p1

    return-object p1
.end method
