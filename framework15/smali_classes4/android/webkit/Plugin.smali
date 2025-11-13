.class public Landroid/webkit/Plugin;
.super Ljava/lang/Object;
.source "Plugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/Plugin$DefaultClickHandler;,
        Landroid/webkit/Plugin$PreferencesClickHandler;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private greylist-max-o mDescription:Ljava/lang/String;

.field private greylist-max-o mFileName:Ljava/lang/String;

.field private greylist-max-o mHandler:Landroid/webkit/Plugin$PreferencesClickHandler;

.field private greylist-max-o mName:Ljava/lang/String;

.field private greylist-max-o mPath:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDescription(Landroid/webkit/Plugin;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/webkit/Plugin;->mDescription:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmName(Landroid/webkit/Plugin;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/webkit/Plugin;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/webkit/Plugin;->mName:Ljava/lang/String;

    iput-object p2, p0, Landroid/webkit/Plugin;->mPath:Ljava/lang/String;

    iput-object p3, p0, Landroid/webkit/Plugin;->mFileName:Ljava/lang/String;

    iput-object p4, p0, Landroid/webkit/Plugin;->mDescription:Ljava/lang/String;

    new-instance v0, Landroid/webkit/Plugin$DefaultClickHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/webkit/Plugin$DefaultClickHandler;-><init>(Landroid/webkit/Plugin;Landroid/webkit/Plugin$DefaultClickHandler-IA;)V

    iput-object v0, p0, Landroid/webkit/Plugin;->mHandler:Landroid/webkit/Plugin$PreferencesClickHandler;

    return-void
.end method


# virtual methods
.method public greylist-max-o dispatchClickEvent(Landroid/content/Context;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/webkit/Plugin;->mHandler:Landroid/webkit/Plugin$PreferencesClickHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/Plugin;->mHandler:Landroid/webkit/Plugin$PreferencesClickHandler;

    invoke-interface {v0, p1}, Landroid/webkit/Plugin$PreferencesClickHandler;->handleClickEvent(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public greylist-max-o getDescription()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/webkit/Plugin;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getFileName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/webkit/Plugin;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/webkit/Plugin;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getPath()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/webkit/Plugin;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o setClickHandler(Landroid/webkit/Plugin$PreferencesClickHandler;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Landroid/webkit/Plugin;->mHandler:Landroid/webkit/Plugin$PreferencesClickHandler;

    return-void
.end method

.method public greylist-max-o setDescription(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Landroid/webkit/Plugin;->mDescription:Ljava/lang/String;

    return-void
.end method

.method public greylist-max-o setFileName(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Landroid/webkit/Plugin;->mFileName:Ljava/lang/String;

    return-void
.end method

.method public greylist-max-o setName(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Landroid/webkit/Plugin;->mName:Ljava/lang/String;

    return-void
.end method

.method public greylist-max-o setPath(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Landroid/webkit/Plugin;->mPath:Ljava/lang/String;

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/webkit/Plugin;->mName:Ljava/lang/String;

    return-object v0
.end method
