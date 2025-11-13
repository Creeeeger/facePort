.class public final Landroidx/window/embedding/MatcherUtils;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0007\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001f\u0010\u0007\u001a\u00020\u00042\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0006\u0010\n\u001a\u00020\tH\u0000\u00a2\u0006\u0002\u0008\u000bJ\u001d\u0010\u000c\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\n\u001a\u00020\tH\u0000\u00a2\u0006\u0002\u0008\u000fJ\u001d\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\n\u001a\u00020\tH\u0000\u00a2\u0006\u0002\u0008\u0013J\u001d\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0006H\u0000\u00a2\u0006\u0002\u0008\u0018J\u0018\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u001b\u001a\u00020\u0006H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0080T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0080T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Landroidx/window/embedding/MatcherUtils;",
        "",
        "()V",
        "sDebugMatchers",
        "",
        "sMatchersTag",
        "",
        "areComponentsMatching",
        "activityComponent",
        "Landroidx/window/core/ActivityComponentInfo;",
        "ruleComponent",
        "areComponentsMatching$window_release",
        "isActivityMatching",
        "activity",
        "Landroid/app/Activity;",
        "isActivityMatching$window_release",
        "isIntentMatching",
        "intent",
        "Landroid/content/Intent;",
        "isIntentMatching$window_release",
        "validateComponentName",
        "",
        "packageName",
        "className",
        "validateComponentName$window_release",
        "wildcardMatch",
        "name",
        "pattern",
        "window_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/window/embedding/MatcherUtils;

.field public static final sDebugMatchers:Z = false

.field public static final sMatchersTag:Ljava/lang/String; = "SplitRuleResolution"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/window/embedding/MatcherUtils;

    invoke-direct {v0}, Landroidx/window/embedding/MatcherUtils;-><init>()V

    sput-object v0, Landroidx/window/embedding/MatcherUtils;->INSTANCE:Landroidx/window/embedding/MatcherUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final wildcardMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const-string p0, "*"

    const/4 v0, 0x0

    invoke-static {p2, p0, v0}, Lkotlin/text/StringsKt___StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    const/4 v1, 0x6

    invoke-static {p2, p0, v0, v0, v1}, Lkotlin/text/StringsKt___StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v3

    invoke-static {p2, p0, v1}, Lkotlin/text/StringsKt___StringsKt;->lastIndexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;I)I

    move-result v1

    if-ne v3, v1, :cond_2

    invoke-static {p2, p0}, Lkotlin/text/StringsKt__StringsJVMKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    sub-int/2addr p0, v2

    invoke-virtual {p2, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p2, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p0}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Name pattern with a wildcard must only contain a single wildcard in the end"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final areComponentsMatching$window_release(Landroidx/window/core/ActivityComponentInfo;Landroidx/window/core/ActivityComponentInfo;)Z
    .locals 5

    const-string v0, "ruleComponent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "*"

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_1

    invoke-virtual {p2}, Landroidx/window/core/ActivityComponentInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Landroidx/window/core/ActivityComponentInfo;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    invoke-virtual {p1}, Landroidx/window/core/ActivityComponentInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0, v1}, Lkotlin/text/StringsKt___StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    xor-int/2addr v0, v2

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Landroidx/window/core/ActivityComponentInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroidx/window/core/ActivityComponentInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroidx/window/core/ActivityComponentInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroidx/window/core/ActivityComponentInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Landroidx/window/embedding/MatcherUtils;->wildcardMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    :goto_0
    move v0, v2

    :goto_1
    invoke-virtual {p1}, Landroidx/window/core/ActivityComponentInfo;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroidx/window/core/ActivityComponentInfo;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p1}, Landroidx/window/core/ActivityComponentInfo;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroidx/window/core/ActivityComponentInfo;->getClassName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroidx/window/embedding/MatcherUtils;->wildcardMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    move p0, v1

    goto :goto_3

    :cond_5
    :goto_2
    move p0, v2

    :goto_3
    if-eqz v0, :cond_6

    if-eqz p0, :cond_6

    move v1, v2

    :cond_6
    return v1

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Wildcard can only be part of the rule."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final isActivityMatching$window_release(Landroid/app/Activity;Landroidx/window/core/ActivityComponentInfo;)Z
    .locals 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ruleComponent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/window/core/ActivityComponentInfo;

    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    const-string v2, "activity.componentName"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroidx/window/core/ActivityComponentInfo;-><init>(Landroid/content/ComponentName;)V

    invoke-virtual {p0, v0, p2}, Landroidx/window/embedding/MatcherUtils;->areComponentsMatching$window_release(Landroidx/window/core/ActivityComponentInfo;Landroidx/window/core/ActivityComponentInfo;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_1

    sget-object p1, Landroidx/window/embedding/MatcherUtils;->INSTANCE:Landroidx/window/embedding/MatcherUtils;

    invoke-virtual {p1, p0, p2}, Landroidx/window/embedding/MatcherUtils;->isIntentMatching$window_release(Landroid/content/Intent;Landroidx/window/core/ActivityComponentInfo;)Z

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isIntentMatching$window_release(Landroid/content/Intent;Landroidx/window/core/ActivityComponentInfo;)Z
    .locals 3

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ruleComponent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroidx/window/core/ActivityComponentInfo;

    invoke-direct {v1, v0}, Landroidx/window/core/ActivityComponentInfo;-><init>(Landroid/content/ComponentName;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1, p2}, Landroidx/window/embedding/MatcherUtils;->areComponentsMatching$window_release(Landroidx/window/core/ActivityComponentInfo;Landroidx/window/core/ActivityComponentInfo;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    invoke-virtual {p2}, Landroidx/window/core/ActivityComponentInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p2}, Landroidx/window/core/ActivityComponentInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroidx/window/embedding/MatcherUtils;->wildcardMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_4
    invoke-virtual {p2}, Landroidx/window/core/ActivityComponentInfo;->getClassName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "*"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_1

    :cond_5
    move v1, v2

    :goto_1
    return v1
.end method

.method public final validateComponentName$window_release(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string p0, "packageName"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "className"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_4

    const-string p0, "*"

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Lkotlin/text/StringsKt___StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    const/4 v2, 0x6

    if-eqz v1, :cond_1

    invoke-static {p1, p0, v0, v0, v2}, Lkotlin/text/StringsKt___StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-ne v1, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Wildcard in package name is only allowed at the end."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-static {p2, p0, v0}, Lkotlin/text/StringsKt___StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {p2, p0, v0, v0, v2}, Lkotlin/text/StringsKt___StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result p0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-ne p0, p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Wildcard in class name is only allowed at the end."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Activity class name must not be empty"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Package name must not be empty"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
