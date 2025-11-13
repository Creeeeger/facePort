.class final Lcom/android/settingslib/spaprivileged/template/app/AppInfoPageKt$AppInfoPage$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2;"
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


# instance fields
.field final synthetic $$changed:I

.field final synthetic $content:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3;"
        }
    .end annotation
.end field

.field final synthetic $footerContent:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2;"
        }
    .end annotation
.end field

.field final synthetic $packageManagers:Lcom/android/settingslib/spaprivileged/model/app/IPackageManagers;

.field final synthetic $packageName:Ljava/lang/String;

.field final synthetic $title:Ljava/lang/String;

.field final synthetic $userId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/functions/Function2;Lcom/android/settingslib/spaprivileged/model/app/IPackageManagers;Lkotlin/jvm/functions/Function3;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/spaprivileged/template/app/AppInfoPageKt$AppInfoPage$2;->$title:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/settingslib/spaprivileged/template/app/AppInfoPageKt$AppInfoPage$2;->$packageName:Ljava/lang/String;

    iput p3, p0, Lcom/android/settingslib/spaprivileged/template/app/AppInfoPageKt$AppInfoPage$2;->$userId:I

    iput-object p4, p0, Lcom/android/settingslib/spaprivileged/template/app/AppInfoPageKt$AppInfoPage$2;->$footerContent:Lkotlin/jvm/functions/Function2;

    iput-object p5, p0, Lcom/android/settingslib/spaprivileged/template/app/AppInfoPageKt$AppInfoPage$2;->$packageManagers:Lcom/android/settingslib/spaprivileged/model/app/IPackageManagers;

    iput-object p6, p0, Lcom/android/settingslib/spaprivileged/template/app/AppInfoPageKt$AppInfoPage$2;->$content:Lkotlin/jvm/functions/Function3;

    iput p7, p0, Lcom/android/settingslib/spaprivileged/template/app/AppInfoPageKt$AppInfoPage$2;->$$changed:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    move-object v6, p1

    check-cast v6, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget-object v0, p0, Lcom/android/settingslib/spaprivileged/template/app/AppInfoPageKt$AppInfoPage$2;->$title:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settingslib/spaprivileged/template/app/AppInfoPageKt$AppInfoPage$2;->$packageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/settingslib/spaprivileged/template/app/AppInfoPageKt$AppInfoPage$2;->$userId:I

    iget-object v3, p0, Lcom/android/settingslib/spaprivileged/template/app/AppInfoPageKt$AppInfoPage$2;->$footerContent:Lkotlin/jvm/functions/Function2;

    iget-object v4, p0, Lcom/android/settingslib/spaprivileged/template/app/AppInfoPageKt$AppInfoPage$2;->$packageManagers:Lcom/android/settingslib/spaprivileged/model/app/IPackageManagers;

    iget-object v5, p0, Lcom/android/settingslib/spaprivileged/template/app/AppInfoPageKt$AppInfoPage$2;->$content:Lkotlin/jvm/functions/Function3;

    iget p0, p0, Lcom/android/settingslib/spaprivileged/template/app/AppInfoPageKt$AppInfoPage$2;->$$changed:I

    or-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v7

    invoke-static/range {v0 .. v7}, Lcom/android/settingslib/spaprivileged/template/app/AppInfoPageKt;->AppInfoPage(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/functions/Function2;Lcom/android/settingslib/spaprivileged/model/app/IPackageManagers;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
