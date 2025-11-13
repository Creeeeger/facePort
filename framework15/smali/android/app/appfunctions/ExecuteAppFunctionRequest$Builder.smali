.class public final Landroid/app/appfunctions/ExecuteAppFunctionRequest$Builder;
.super Ljava/lang/Object;
.source "ExecuteAppFunctionRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/appfunctions/ExecuteAppFunctionRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mExtras:Landroid/os/Bundle;

.field private final blacklist mFunctionIdentifier:Ljava/lang/String;

.field private blacklist mParameters:Landroid/app/appsearch/GenericDocument;

.field private final blacklist mTargetPackageName:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/app/appfunctions/ExecuteAppFunctionRequest$Builder;->mExtras:Landroid/os/Bundle;

    new-instance v0, Landroid/app/appsearch/GenericDocument$Builder;

    const-string v1, ""

    invoke-direct {v0, v1, v1, v1}, Landroid/app/appsearch/GenericDocument$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/appsearch/GenericDocument$Builder;->build()Landroid/app/appsearch/GenericDocument;

    move-result-object v0

    iput-object v0, p0, Landroid/app/appfunctions/ExecuteAppFunctionRequest$Builder;->mParameters:Landroid/app/appsearch/GenericDocument;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/app/appfunctions/ExecuteAppFunctionRequest$Builder;->mTargetPackageName:Ljava/lang/String;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/app/appfunctions/ExecuteAppFunctionRequest$Builder;->mFunctionIdentifier:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/app/appfunctions/ExecuteAppFunctionRequest;
    .locals 7

    new-instance v6, Landroid/app/appfunctions/ExecuteAppFunctionRequest;

    iget-object v1, p0, Landroid/app/appfunctions/ExecuteAppFunctionRequest$Builder;->mTargetPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/app/appfunctions/ExecuteAppFunctionRequest$Builder;->mFunctionIdentifier:Ljava/lang/String;

    iget-object v3, p0, Landroid/app/appfunctions/ExecuteAppFunctionRequest$Builder;->mExtras:Landroid/os/Bundle;

    new-instance v4, Landroid/app/appfunctions/GenericDocumentWrapper;

    iget-object v0, p0, Landroid/app/appfunctions/ExecuteAppFunctionRequest$Builder;->mParameters:Landroid/app/appsearch/GenericDocument;

    invoke-direct {v4, v0}, Landroid/app/appfunctions/GenericDocumentWrapper;-><init>(Landroid/app/appsearch/GenericDocument;)V

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/app/appfunctions/ExecuteAppFunctionRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/appfunctions/GenericDocumentWrapper;Landroid/app/appfunctions/ExecuteAppFunctionRequest-IA;)V

    return-object v6
.end method

.method public blacklist setExtras(Landroid/os/Bundle;)Landroid/app/appfunctions/ExecuteAppFunctionRequest$Builder;
    .locals 1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Landroid/app/appfunctions/ExecuteAppFunctionRequest$Builder;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public blacklist setParameters(Landroid/app/appsearch/GenericDocument;)Landroid/app/appfunctions/ExecuteAppFunctionRequest$Builder;
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroid/app/appfunctions/ExecuteAppFunctionRequest$Builder;->mParameters:Landroid/app/appsearch/GenericDocument;

    return-object p0
.end method
