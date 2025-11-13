.class Lcom/android/internal/app/SmRccPolicy$RccApp;
.super Ljava/lang/Object;
.source "SmRccPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/SmRccPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RccApp"
.end annotation


# instance fields
.field private blacklist open:Ljava/lang/String;

.field private blacklist pkgName:Ljava/lang/String;

.field private blacklist restrict:Ljava/lang/String;

.field private blacklist show:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/SmRccPolicy$RccApp;->pkgName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/internal/app/SmRccPolicy$RccApp;->show:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/internal/app/SmRccPolicy$RccApp;->open:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/internal/app/SmRccPolicy$RccApp;->restrict:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public blacklist getOpen()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/SmRccPolicy$RccApp;->open:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPkgName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/SmRccPolicy$RccApp;->pkgName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getRestrict()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/SmRccPolicy$RccApp;->restrict:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getShow()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/SmRccPolicy$RccApp;->show:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist setOpen(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/SmRccPolicy$RccApp;->open:Ljava/lang/String;

    return-void
.end method

.method public blacklist setPkgName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/SmRccPolicy$RccApp;->pkgName:Ljava/lang/String;

    return-void
.end method

.method public blacklist setRestrict(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/SmRccPolicy$RccApp;->restrict:Ljava/lang/String;

    return-void
.end method

.method public blacklist setShow(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/SmRccPolicy$RccApp;->show:Ljava/lang/String;

    return-void
.end method
