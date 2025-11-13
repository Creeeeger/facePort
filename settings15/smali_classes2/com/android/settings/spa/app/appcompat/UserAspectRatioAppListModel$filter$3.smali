.class final Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel$filter$3;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListItemModel;",
        "invoke",
        "(Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListItemModel;)Ljava/lang/Boolean;"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel$filter$3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel$filter$3;

    invoke-direct {v0}, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel$filter$3;-><init>()V

    sput-object v0, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel$filter$3;->INSTANCE:Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListModel$filter$3;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListItemModel;

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p0, p1, Lcom/android/settings/spa/app/appcompat/UserAspectRatioAppListItemModel;->canDisplay:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
