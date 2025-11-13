.class public final Lcom/android/settings/widget/TipCardPreference;
.super Lcom/android/settings/spa/preference/ComposePreference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B\u001d\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/android/settings/widget/TipCardPreference;",
        "Lcom/android/settings/spa/preference/ComposePreference;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "applications__sources__apps__SecSettings__android_common__SecSettings-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public iconResId:Ljava/lang/Integer;

.field public onDismiss:Lkotlin/jvm/functions/Function0;

.field public primaryButtonAction:Lkotlin/jvm/functions/Function0;

.field public primaryButtonContentDescription:Ljava/lang/String;

.field public primaryButtonText:Ljava/lang/String;

.field public primaryButtonVisibility:Z

.field public secondaryButtonAction:Lkotlin/jvm/functions/Function0;

.field public secondaryButtonText:Ljava/lang/String;

.field public secondaryButtonVisibility:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/android/settings/widget/TipCardPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/settings/spa/preference/ComposePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string p1, ""

    iput-object p1, p0, Lcom/android/settings/widget/TipCardPreference;->primaryButtonText:Ljava/lang/String;

    sget-object p2, Lcom/android/settings/widget/TipCardPreference$primaryButtonAction$1;->INSTANCE:Lcom/android/settings/widget/TipCardPreference$primaryButtonAction$1;

    iput-object p2, p0, Lcom/android/settings/widget/TipCardPreference;->primaryButtonAction:Lkotlin/jvm/functions/Function0;

    iput-object p1, p0, Lcom/android/settings/widget/TipCardPreference;->secondaryButtonText:Ljava/lang/String;

    sget-object p1, Lcom/android/settings/widget/TipCardPreference$secondaryButtonAction$1;->INSTANCE:Lcom/android/settings/widget/TipCardPreference$secondaryButtonAction$1;

    iput-object p1, p0, Lcom/android/settings/widget/TipCardPreference;->secondaryButtonAction:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/TipCardPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final buildContent()V
    .locals 4

    new-instance v0, Lcom/android/settings/widget/TipCardPreference$buildContent$1;

    invoke-direct {v0, p0}, Lcom/android/settings/widget/TipCardPreference$buildContent$1;-><init>(Lcom/android/settings/widget/TipCardPreference;)V

    new-instance v1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v2, -0x127ae4be

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    iput-object v1, p0, Lcom/android/settings/spa/preference/ComposePreference;->content:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public final notifyChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/widget/TipCardPreference;->buildContent()V

    invoke-super {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method
