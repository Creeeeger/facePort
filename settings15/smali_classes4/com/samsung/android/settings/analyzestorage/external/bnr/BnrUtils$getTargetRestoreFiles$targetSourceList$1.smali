.class public final Lcom/samsung/android/settings/analyzestorage/external/bnr/BnrUtils$getTargetRestoreFiles$targetSourceList$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/io/FilenameFilter;


# static fields
.field public static final INSTANCE:Lcom/samsung/android/settings/analyzestorage/external/bnr/BnrUtils$getTargetRestoreFiles$targetSourceList$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/analyzestorage/external/bnr/BnrUtils$getTargetRestoreFiles$targetSourceList$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/analyzestorage/external/bnr/BnrUtils$getTargetRestoreFiles$targetSourceList$1;->INSTANCE:Lcom/samsung/android/settings/analyzestorage/external/bnr/BnrUtils$getTargetRestoreFiles$targetSourceList$1;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const-string p0, "BACKUP#"

    invoke-static {p2, p0}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
