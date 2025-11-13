.class final Lcom/android/settings/spa/app/appinfo/AppNotificationPreferenceKt$AppNotificationPreference$3;
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

.field final synthetic $$default:I

.field final synthetic $app:Landroid/content/pm/ApplicationInfo;

.field final synthetic $repository:Lcom/android/settings/spa/notification/IAppNotificationRepository;


# direct methods
.method public constructor <init>(Landroid/content/pm/ApplicationInfo;Lcom/android/settings/spa/notification/IAppNotificationRepository;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/spa/app/appinfo/AppNotificationPreferenceKt$AppNotificationPreference$3;->$app:Landroid/content/pm/ApplicationInfo;

    iput-object p2, p0, Lcom/android/settings/spa/app/appinfo/AppNotificationPreferenceKt$AppNotificationPreference$3;->$repository:Lcom/android/settings/spa/notification/IAppNotificationRepository;

    iput p3, p0, Lcom/android/settings/spa/app/appinfo/AppNotificationPreferenceKt$AppNotificationPreference$3;->$$changed:I

    iput p4, p0, Lcom/android/settings/spa/app/appinfo/AppNotificationPreferenceKt$AppNotificationPreference$3;->$$default:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    iget-object p2, p0, Lcom/android/settings/spa/app/appinfo/AppNotificationPreferenceKt$AppNotificationPreference$3;->$app:Landroid/content/pm/ApplicationInfo;

    iget-object v0, p0, Lcom/android/settings/spa/app/appinfo/AppNotificationPreferenceKt$AppNotificationPreference$3;->$repository:Lcom/android/settings/spa/notification/IAppNotificationRepository;

    iget v1, p0, Lcom/android/settings/spa/app/appinfo/AppNotificationPreferenceKt$AppNotificationPreference$3;->$$changed:I

    or-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v1

    iget p0, p0, Lcom/android/settings/spa/app/appinfo/AppNotificationPreferenceKt$AppNotificationPreference$3;->$$default:I

    invoke-static {p2, v0, p1, v1, p0}, Lcom/android/settings/spa/app/appinfo/AppNotificationPreferenceKt;->AppNotificationPreference(Landroid/content/pm/ApplicationInfo;Lcom/android/settings/spa/notification/IAppNotificationRepository;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
