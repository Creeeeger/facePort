.class Landroid/app/prediction/AppPredictionSessionId$1;
.super Ljava/lang/Object;
.source "AppPredictionSessionId.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/prediction/AppPredictionSessionId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/prediction/AppPredictionSessionId;",
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
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/prediction/AppPredictionSessionId;
    .locals 2

    new-instance v0, Landroid/app/prediction/AppPredictionSessionId;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/app/prediction/AppPredictionSessionId;-><init>(Landroid/os/Parcel;Landroid/app/prediction/AppPredictionSessionId-IA;)V

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

    invoke-virtual {p0, p1}, Landroid/app/prediction/AppPredictionSessionId$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/prediction/AppPredictionSessionId;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/app/prediction/AppPredictionSessionId;
    .locals 1

    new-array v0, p1, [Landroid/app/prediction/AppPredictionSessionId;

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

    invoke-virtual {p0, p1}, Landroid/app/prediction/AppPredictionSessionId$1;->newArray(I)[Landroid/app/prediction/AppPredictionSessionId;

    move-result-object p1

    return-object p1
.end method
