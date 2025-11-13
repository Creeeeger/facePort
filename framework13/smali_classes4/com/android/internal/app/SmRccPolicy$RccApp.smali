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
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "show"    # Ljava/lang/String;
    .param p3, "open"    # Ljava/lang/String;
    .param p4, "restrict"    # Ljava/lang/String;

    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 336
    iput-object p1, p0, Lcom/android/internal/app/SmRccPolicy$RccApp;->pkgName:Ljava/lang/String;

    .line 337
    iput-object p2, p0, Lcom/android/internal/app/SmRccPolicy$RccApp;->show:Ljava/lang/String;

    .line 338
    iput-object p3, p0, Lcom/android/internal/app/SmRccPolicy$RccApp;->open:Ljava/lang/String;

    .line 339
    iput-object p4, p0, Lcom/android/internal/app/SmRccPolicy$RccApp;->restrict:Ljava/lang/String;

    .line 340
    return-void
.end method


# virtual methods
.method public blacklist getOpen()Ljava/lang/String;
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/android/internal/app/SmRccPolicy$RccApp;->open:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPkgName()Ljava/lang/String;
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/android/internal/app/SmRccPolicy$RccApp;->pkgName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getRestrict()Ljava/lang/String;
    .locals 1

    .line 367
    iget-object v0, p0, Lcom/android/internal/app/SmRccPolicy$RccApp;->restrict:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getShow()Ljava/lang/String;
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/android/internal/app/SmRccPolicy$RccApp;->show:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist setOpen(Ljava/lang/String;)V
    .locals 0
    .param p1, "open"    # Ljava/lang/String;

    .line 363
    iput-object p1, p0, Lcom/android/internal/app/SmRccPolicy$RccApp;->open:Ljava/lang/String;

    .line 364
    return-void
.end method

.method public blacklist setPkgName(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 347
    iput-object p1, p0, Lcom/android/internal/app/SmRccPolicy$RccApp;->pkgName:Ljava/lang/String;

    .line 348
    return-void
.end method

.method public blacklist setRestrict(Ljava/lang/String;)V
    .locals 0
    .param p1, "restrict"    # Ljava/lang/String;

    .line 371
    iput-object p1, p0, Lcom/android/internal/app/SmRccPolicy$RccApp;->restrict:Ljava/lang/String;

    .line 372
    return-void
.end method

.method public blacklist setShow(Ljava/lang/String;)V
    .locals 0
    .param p1, "show"    # Ljava/lang/String;

    .line 355
    iput-object p1, p0, Lcom/android/internal/app/SmRccPolicy$RccApp;->show:Ljava/lang/String;

    .line 356
    return-void
.end method
