.class public final synthetic Lcom/android/settings/notification/modes/IconLoader$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/google/common/base/Function;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/android/settings/notification/modes/IconLoader$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p2, p0, Lcom/android/settings/notification/modes/IconLoader$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/settings/notification/modes/IconLoader$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/android/settings/notification/modes/IconLoader$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/settings/notification/modes/IconLoader$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/notification/modes/IconLoader;

    iget-object p0, p0, Lcom/android/settings/notification/modes/IconLoader$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    check-cast p1, Landroid/graphics/drawable/Drawable;

    iget-object v1, v0, Lcom/android/settings/notification/modes/IconLoader;->mCache:Landroid/util/LruCache;

    monitor-enter v1

    :try_start_0
    iget-object v0, v0, Lcom/android/settings/notification/modes/IconLoader;->mCache:Landroid/util/LruCache;

    if-eqz p1, :cond_0

    move-object v2, p1

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/android/settings/notification/modes/IconLoader;->MISSING:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v0, p0, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-object p1

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/notification/modes/IconLoader$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/notification/modes/IconLoader$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Landroid/app/AutomaticZenRule;

    check-cast p1, Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/app/AutomaticZenRule;->getType()I

    move-result p0

    invoke-static {v0, p0}, Lcom/android/settings/notification/modes/IconLoader;->getFallbackIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_1
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
