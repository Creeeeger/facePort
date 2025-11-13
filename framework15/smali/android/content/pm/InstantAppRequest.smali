.class public final Landroid/content/pm/InstantAppRequest;
.super Ljava/lang/Object;
.source "InstantAppRequest.java"


# instance fields
.field public final blacklist callingFeatureId:Ljava/lang/String;

.field public final greylist-max-o callingPackage:Ljava/lang/String;

.field public final blacklist hostDigestPrefixSecure:[I

.field public final blacklist isRequesterInstantApp:Z

.field public final greylist-max-o origIntent:Landroid/content/Intent;

.field public final greylist-max-o resolveForStart:Z

.field public final greylist-max-o resolvedType:Ljava/lang/String;

.field public final greylist-max-o responseObj:Landroid/content/pm/AuxiliaryResolveInfo;

.field public final blacklist token:Ljava/lang/String;

.field public final greylist-max-o userId:I

.field public final greylist-max-o verificationBundle:Landroid/os/Bundle;


# direct methods
.method public constructor blacklist <init>(Landroid/content/pm/AuxiliaryResolveInfo;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILandroid/os/Bundle;Z[ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/pm/InstantAppRequest;->responseObj:Landroid/content/pm/AuxiliaryResolveInfo;

    iput-object p2, p0, Landroid/content/pm/InstantAppRequest;->origIntent:Landroid/content/Intent;

    iput-object p3, p0, Landroid/content/pm/InstantAppRequest;->resolvedType:Ljava/lang/String;

    iput-object p4, p0, Landroid/content/pm/InstantAppRequest;->callingPackage:Ljava/lang/String;

    iput-object p5, p0, Landroid/content/pm/InstantAppRequest;->callingFeatureId:Ljava/lang/String;

    iput-boolean p6, p0, Landroid/content/pm/InstantAppRequest;->isRequesterInstantApp:Z

    iput p7, p0, Landroid/content/pm/InstantAppRequest;->userId:I

    iput-object p8, p0, Landroid/content/pm/InstantAppRequest;->verificationBundle:Landroid/os/Bundle;

    iput-boolean p9, p0, Landroid/content/pm/InstantAppRequest;->resolveForStart:Z

    iput-object p10, p0, Landroid/content/pm/InstantAppRequest;->hostDigestPrefixSecure:[I

    iput-object p11, p0, Landroid/content/pm/InstantAppRequest;->token:Ljava/lang/String;

    return-void
.end method
