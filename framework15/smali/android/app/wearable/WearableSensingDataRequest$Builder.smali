.class public final Landroid/app/wearable/WearableSensingDataRequest$Builder;
.super Ljava/lang/Object;
.source "WearableSensingDataRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/wearable/WearableSensingDataRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mDataType:I

.field private blacklist mRequestDetails:Landroid/os/PersistableBundle;


# direct methods
.method public constructor whitelist <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/app/wearable/WearableSensingDataRequest$Builder;->mDataType:I

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/app/wearable/WearableSensingDataRequest;
    .locals 4

    iget-object v0, p0, Landroid/app/wearable/WearableSensingDataRequest$Builder;->mRequestDetails:Landroid/os/PersistableBundle;

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    iput-object v0, p0, Landroid/app/wearable/WearableSensingDataRequest$Builder;->mRequestDetails:Landroid/os/PersistableBundle;

    :cond_0
    new-instance v0, Landroid/app/wearable/WearableSensingDataRequest;

    iget v1, p0, Landroid/app/wearable/WearableSensingDataRequest$Builder;->mDataType:I

    iget-object v2, p0, Landroid/app/wearable/WearableSensingDataRequest$Builder;->mRequestDetails:Landroid/os/PersistableBundle;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/app/wearable/WearableSensingDataRequest;-><init>(ILandroid/os/PersistableBundle;Landroid/app/wearable/WearableSensingDataRequest-IA;)V

    return-object v0
.end method

.method public whitelist setRequestDetails(Landroid/os/PersistableBundle;)Landroid/app/wearable/WearableSensingDataRequest$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/wearable/WearableSensingDataRequest$Builder;->mRequestDetails:Landroid/os/PersistableBundle;

    return-object p0
.end method
