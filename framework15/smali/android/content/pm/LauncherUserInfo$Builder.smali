.class public final Landroid/content/pm/LauncherUserInfo$Builder;
.super Ljava/lang/Object;
.source "LauncherUserInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/LauncherUserInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mUserSerialNumber:I

.field private final blacklist mUserType:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/pm/LauncherUserInfo$Builder;->mUserType:Ljava/lang/String;

    iput p2, p0, Landroid/content/pm/LauncherUserInfo$Builder;->mUserSerialNumber:I

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/content/pm/LauncherUserInfo;
    .locals 4

    new-instance v0, Landroid/content/pm/LauncherUserInfo;

    iget-object v1, p0, Landroid/content/pm/LauncherUserInfo$Builder;->mUserType:Ljava/lang/String;

    iget v2, p0, Landroid/content/pm/LauncherUserInfo$Builder;->mUserSerialNumber:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/content/pm/LauncherUserInfo;-><init>(Ljava/lang/String;ILandroid/content/pm/LauncherUserInfo-IA;)V

    return-object v0
.end method
