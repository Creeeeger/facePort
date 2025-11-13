.class public final Landroid/app/appfunctions/ExecuteAppFunctionRequest;
.super Ljava/lang/Object;
.source "ExecuteAppFunctionRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/appfunctions/ExecuteAppFunctionRequest$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/appfunctions/ExecuteAppFunctionRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mExtras:Landroid/os/Bundle;

.field private final blacklist mFunctionIdentifier:Ljava/lang/String;

.field private final blacklist mParameters:Landroid/app/appfunctions/GenericDocumentWrapper;

.field private final blacklist mTargetPackageName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/appfunctions/ExecuteAppFunctionRequest$1;

    invoke-direct {v0}, Landroid/app/appfunctions/ExecuteAppFunctionRequest$1;-><init>()V

    sput-object v0, Landroid/app/appfunctions/ExecuteAppFunctionRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/appfunctions/GenericDocumentWrapper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/app/appfunctions/ExecuteAppFunctionRequest;->mTargetPackageName:Ljava/lang/String;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/app/appfunctions/ExecuteAppFunctionRequest;->mFunctionIdentifier:Ljava/lang/String;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Landroid/app/appfunctions/ExecuteAppFunctionRequest;->mExtras:Landroid/os/Bundle;

    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/appfunctions/GenericDocumentWrapper;

    iput-object v0, p0, Landroid/app/appfunctions/ExecuteAppFunctionRequest;->mParameters:Landroid/app/appfunctions/GenericDocumentWrapper;

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/appfunctions/GenericDocumentWrapper;Landroid/app/appfunctions/ExecuteAppFunctionRequest-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/appfunctions/ExecuteAppFunctionRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/appfunctions/GenericDocumentWrapper;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getExtras()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/app/appfunctions/ExecuteAppFunctionRequest;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public blacklist getFunctionIdentifier()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/appfunctions/ExecuteAppFunctionRequest;->mFunctionIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getParameters()Landroid/app/appsearch/GenericDocument;
    .locals 1

    iget-object v0, p0, Landroid/app/appfunctions/ExecuteAppFunctionRequest;->mParameters:Landroid/app/appfunctions/GenericDocumentWrapper;

    invoke-virtual {v0}, Landroid/app/appfunctions/GenericDocumentWrapper;->getValue()Landroid/app/appsearch/GenericDocument;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getTargetPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/appfunctions/ExecuteAppFunctionRequest;->mTargetPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/app/appfunctions/ExecuteAppFunctionRequest;->mTargetPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/appfunctions/ExecuteAppFunctionRequest;->mFunctionIdentifier:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/appfunctions/ExecuteAppFunctionRequest;->mParameters:Landroid/app/appfunctions/GenericDocumentWrapper;

    invoke-virtual {v0, p1, p2}, Landroid/app/appfunctions/GenericDocumentWrapper;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/app/appfunctions/ExecuteAppFunctionRequest;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
