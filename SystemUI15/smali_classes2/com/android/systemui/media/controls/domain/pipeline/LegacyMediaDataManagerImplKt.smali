.class public abstract Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImplKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final ART_URIS:[Ljava/lang/String;

.field public static final EMPTY_SMARTSPACE_MEDIA_DATA:Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;

.field public static final LOADING:Lcom/android/systemui/media/controls/shared/model/MediaData;


# direct methods
.method static constructor <clinit>()V
    .locals 36

    const-string v0, "android.media.metadata.ART_URI"

    const-string v1, "android.media.metadata.DISPLAY_ICON_URI"

    const-string v2, "android.media.metadata.ALBUM_ART_URI"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImplKt;->ART_URIS:[Ljava/lang/String;

    new-instance v0, Lcom/android/systemui/media/controls/shared/model/MediaData;

    sget-object v34, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    const/16 v35, -0x1

    invoke-static/range {v35 .. v35}, Lcom/android/internal/logging/InstanceId;->fakeInstanceId(I)Lcom/android/internal/logging/InstanceId;

    move-result-object v28

    const v32, 0xcff0200

    const/16 v33, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const-string v12, "INVALID"

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    const/16 v29, -0x1

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object v1, v0

    move-object/from16 v9, v34

    move-object/from16 v10, v34

    invoke-direct/range {v1 .. v33}, Lcom/android/systemui/media/controls/shared/model/MediaData;-><init>(IZLjava/lang/String;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Ljava/util/List;Ljava/util/List;Lcom/android/systemui/media/controls/shared/model/MediaButton;Ljava/lang/String;Landroid/media/session/MediaSession$Token;Landroid/app/PendingIntent;Lcom/android/systemui/media/controls/shared/model/MediaDeviceData;ZLjava/lang/Runnable;IZLjava/lang/String;ZLjava/lang/Boolean;ZJJLcom/android/internal/logging/InstanceId;IZLjava/lang/Double;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImplKt;->LOADING:Lcom/android/systemui/media/controls/shared/model/MediaData;

    new-instance v0, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;

    invoke-static/range {v35 .. v35}, Lcom/android/internal/logging/InstanceId;->fakeInstanceId(I)Lcom/android/internal/logging/InstanceId;

    move-result-object v10

    const-wide/16 v11, 0x0

    const-string v2, "INVALID"

    const/4 v3, 0x0

    const-string v4, "INVALID"

    const/4 v5, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    move-object v1, v0

    move-object/from16 v6, v34

    invoke-direct/range {v1 .. v12}, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;-><init>(Ljava/lang/String;ZLjava/lang/String;Landroid/app/smartspace/SmartspaceAction;Ljava/util/List;Landroid/content/Intent;JLcom/android/internal/logging/InstanceId;J)V

    sput-object v0, Lcom/android/systemui/media/controls/domain/pipeline/LegacyMediaDataManagerImplKt;->EMPTY_SMARTSPACE_MEDIA_DATA:Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaData;

    return-void
.end method
