.class public final Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils$AppLabelComparator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils;


# direct methods
.method public constructor <init>(Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils$AppLabelComparator;->this$0:Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5

    check-cast p1, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageInfo;

    check-cast p2, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageInfo;

    iget-object v0, p0, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils$AppLabelComparator;->this$0:Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils;

    iget-object v1, p1, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils;->getApplicationLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils$AppLabelComparator;->this$0:Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils;

    iget-object v2, p2, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils;->getApplicationLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-static {v4}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/text/Collator;->setStrength(I)V

    invoke-virtual {v4, v0, p0}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    iget p0, p1, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageInfo;->profileId:I

    iget p1, p2, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageInfo;->profileId:I

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result p0

    :cond_0
    move v3, p0

    :cond_1
    return v3
.end method
