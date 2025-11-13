.class final synthetic Lcom/android/settingslib/spaprivileged/model/app/AppRepositoryKt$rememberAppRepository$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/settingslib/spaprivileged/model/app/AppRepositoryKt$rememberAppRepository$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settingslib/spaprivileged/model/app/AppRepositoryKt$rememberAppRepository$1;

    invoke-direct {v0}, Lcom/android/settingslib/spaprivileged/model/app/AppRepositoryKt$rememberAppRepository$1;-><init>()V

    sput-object v0, Lcom/android/settingslib/spaprivileged/model/app/AppRepositoryKt$rememberAppRepository$1;->INSTANCE:Lcom/android/settingslib/spaprivileged/model/app/AppRepositoryKt$rememberAppRepository$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const-string v4, "<init>(Landroid/content/Context;)V"

    const/4 v5, 0x0

    const/4 v1, 0x1

    const-class v2, Lcom/android/settingslib/spaprivileged/model/app/AppRepositoryImpl;

    const-string v3, "<init>"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/content/Context;

    const-string p0, "p0"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/android/settingslib/spaprivileged/model/app/AppRepositoryImpl;

    invoke-direct {p0, p1}, Lcom/android/settingslib/spaprivileged/model/app/AppRepositoryImpl;-><init>(Landroid/content/Context;)V

    return-object p0
.end method
