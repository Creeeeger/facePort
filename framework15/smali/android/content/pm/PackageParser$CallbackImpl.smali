.class public final Landroid/content/pm/PackageParser$CallbackImpl;
.super Ljava/lang/Object;
.source "PackageParser.java"

# interfaces
.implements Landroid/content/pm/PackageParser$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CallbackImpl"
.end annotation


# instance fields
.field private final greylist-max-o mPm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/pm/PackageManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/pm/PackageParser$CallbackImpl;->mPm:Landroid/content/pm/PackageManager;

    return-void
.end method


# virtual methods
.method public greylist-max-o hasFeature(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Landroid/content/pm/PackageParser$CallbackImpl;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
