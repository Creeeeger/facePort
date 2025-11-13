.class public final Landroid/app/time/TimeConfiguration;
.super Ljava/lang/Object;
.source "TimeConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/time/TimeConfiguration$Builder;,
        Landroid/app/time/TimeConfiguration$Setting;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/time/TimeConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist SETTING_AUTO_DETECTION_ENABLED:Ljava/lang/String; = "autoDetectionEnabled"


# instance fields
.field private final blacklist mBundle:Landroid/os/Bundle;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmBundle(Landroid/app/time/TimeConfiguration;)Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Landroid/app/time/TimeConfiguration;->mBundle:Landroid/os/Bundle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smreadFromParcel(Landroid/os/Parcel;)Landroid/app/time/TimeConfiguration;
    .locals 0

    invoke-static {p0}, Landroid/app/time/TimeConfiguration;->readFromParcel(Landroid/os/Parcel;)Landroid/app/time/TimeConfiguration;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/time/TimeConfiguration$1;

    invoke-direct {v0}, Landroid/app/time/TimeConfiguration$1;-><init>()V

    sput-object v0, Landroid/app/time/TimeConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/app/time/TimeConfiguration$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/app/time/TimeConfiguration$Builder;->-$$Nest$fgetmBundle(Landroid/app/time/TimeConfiguration$Builder;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/time/TimeConfiguration;->mBundle:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/time/TimeConfiguration$Builder;Landroid/app/time/TimeConfiguration-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/time/TimeConfiguration;-><init>(Landroid/app/time/TimeConfiguration$Builder;)V

    return-void
.end method

.method private blacklist enforceSettingPresent(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Landroid/app/time/TimeConfiguration;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not set"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist readFromParcel(Landroid/os/Parcel;)Landroid/app/time/TimeConfiguration;
    .locals 2

    new-instance v0, Landroid/app/time/TimeConfiguration$Builder;

    invoke-direct {v0}, Landroid/app/time/TimeConfiguration$Builder;-><init>()V

    invoke-virtual {p0}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/time/TimeConfiguration$Builder;->setPropertyBundleInternal(Landroid/os/Bundle;)Landroid/app/time/TimeConfiguration$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/time/TimeConfiguration$Builder;->build()Landroid/app/time/TimeConfiguration;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/app/time/TimeConfiguration;

    iget-object v1, p0, Landroid/app/time/TimeConfiguration;->mBundle:Landroid/os/Bundle;

    iget-object v2, v0, Landroid/app/time/TimeConfiguration;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->kindofEquals(Landroid/os/BaseBundle;)Z

    move-result v1

    return v1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hasIsAutoDetectionEnabled()Z
    .locals 2

    iget-object v0, p0, Landroid/app/time/TimeConfiguration;->mBundle:Landroid/os/Bundle;

    const-string v1, "autoDetectionEnabled"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    iget-object v0, p0, Landroid/app/time/TimeConfiguration;->mBundle:Landroid/os/Bundle;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isAutoDetectionEnabled()Z
    .locals 2

    const-string v0, "autoDetectionEnabled"

    invoke-direct {p0, v0}, Landroid/app/time/TimeConfiguration;->enforceSettingPresent(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/app/time/TimeConfiguration;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public blacklist isComplete()Z
    .locals 1

    invoke-virtual {p0}, Landroid/app/time/TimeConfiguration;->hasIsAutoDetectionEnabled()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TimeConfiguration{mBundle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/time/TimeConfiguration;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/app/time/TimeConfiguration;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
